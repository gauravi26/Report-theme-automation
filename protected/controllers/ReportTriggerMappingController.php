<?php

class ReportTriggerMappingController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update', 'query','columnQuery','getScriptDetail','reportScriptMapping','selectReport'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
        
    private function SaveScriptForReport($column, $rowWord, $scriptId)
{
    // Fetch Script using $scriptId. Replace columnName with $column and word $rowWord.
    // Save Script in Applied Script Column with $pageId
    // Check if any of the variables is null
    $scriptModel = ScriptCode::model()->findByPk($scriptId);

    if ($scriptModel !== null) {
        $script = $scriptModel->code;

        // Check if 'column_Name' is present in the script
        if (strpos($script, "column_Name") !== false) {
            // Split the column names
            $columnArray = explode(',', $column);
            $columnArray = array_map('trim', $columnArray); // Remove leading/trailing whitespaces

            // Replace 'column_Name' with the value of $column in the script
            if (count($columnArray) === 1) {
                // Single word case
                $script = str_replace('column_Name', $columnArray[0], $script);
            } else {
                // Comma-separated words case
                $replacementArray = "['" . implode("','", $columnArray) . "']";
                $script = str_replace("['column_Name']", $replacementArray, $script);
            }
        }

        // Check if 'word' is present in the script
        if (strpos($script, "word") !== false) {
            // Replace 'word' with the value of $rowWord
            $wordArray = explode(',', $rowWord);
            $wordArray = array_map('trim', $wordArray);

            // Replace 'word' with the value of $rowWord
            if (count($wordArray) === 1) {
                // Single word case
                $script = str_replace('word', $wordArray[0], $script);
            } else {
                // Comma-separated words case
                $replacementArray = "['" . implode("','", $wordArray) . "']";
                $script = str_replace("['word']", $replacementArray, $script);
            }
        } else {
            // Check if $rowWord is empty or null and set it to 'NA'
            $rowWord = ($rowWord !== '' && $rowWord !== null) ? $rowWord : 'NA';
        }

        // Return the modified script
        return $script;
    } else {
        return 'NA';
    }
}
 
public function actionCreate()
{
    $model = new ReportTriggerMapping;

    // Uncomment the following line if AJAX validation is needed
    // $this->performAjaxValidation($model);

    if (isset($_POST['ReportTriggerMapping'])) {
        $model->attributes = $_POST['ReportTriggerMapping'];
        $scriptId = $model->scipt_id;
        $columns = $model->report_columns;
        $rowWord = $model->report_row;
        $pageId = $model->application_forms_id;

        // Split the column names
        $columnArray = explode(',', $columns);
        $columnArray = array_map('trim', $columnArray); // Remove leading/trailing whitespaces

        // Iterate over each column and save a new model for each
        foreach ($columnArray as $singleColumn) {
            $newModel = new ReportTriggerMapping;
            $newModel->attributes = $model->attributes; // Copy common attributes

            // Check if the current column is associated with 'scipt_id'
            if (isset($model->scipt_id[$singleColumn])) {
                $newModel->report_columns = $singleColumn;
                $newModel->scipt_id = $model->scipt_id[$singleColumn];
                // Save the script for the current column
            $jsonScript = $this->SaveScriptForReport(trim($singleColumn), $rowWord, $model->scipt_id[$singleColumn]);
            $newModel->applied_script = $jsonScript;
            } else {
                // Check if the current column is associated with 'course_name' or 'course_link'
                $newModel->report_columns = $singleColumn;
            }

          

            // Save the new model
            if (!$newModel->save()) {
                // Handle validation or save errors
                Yii::log("Error saving model for column: $singleColumn", CLogger::LEVEL_ERROR);
            }
        }

        $this->redirect(array('index')); // Redirect to index or any other action
    }

    $this->render('create', array(
        'model' => $model,
    ));
}


        
//        public function actionCreate()
//	{
//		$model=new ReportTriggerMapping;
//
//		// Uncomment the following line if AJAX validation is needed
//		// $this->performAjaxValidation($model);
//
//		if(isset($_POST['ReportTriggerMapping']))
//		{
//			$model->attributes=$_POST['ReportTriggerMapping'];
//                        $scriptId = $model->scipt_id;
//                        $column = $model->report_columns;
//                        $rowWord = $model->report_row;
//                        $pageId = $model->application_forms_id;
//                        
//                        if($scriptId!=null){
//                            
//                            $jsonScript = $this->SaveScriptForReport($column, $rowWord, $scriptId);
//                                $model->applied_script = $jsonScript; // Use $jsonScript directly
//
//                            
//                        }
//                        else{
//                            echo "Please check if all fields a filled property with correct values.<br>";
//                            echo "Error Saving Script for this report.";
//                        }
//                        
////                        $model->applied_script=($script);
//			if($model->save())
//				$this->redirect(array('view','id'=>$model->id));
//		}
//
//		$this->render('create',array(
//			'model'=>$model,
//		));
//	}
              
//       public function actionCreate()
//{
//    $model = new ReportTriggerMapping;
//
//    // Uncomment the following line if AJAX validation is needed
//    // $this->performAjaxValidation($model);
//
//    if (isset($_POST['ReportTriggerMapping'])) {
//        $model->attributes = $_POST['ReportTriggerMapping'];
//        $scriptId = $model->scipt_id;
//        $column = $model->report_columns;
//        $rowWord = $model->report_row;
//        $pageId = $model->application_forms_id;
//
//        if ($scriptId != null) {
//            // Split the column names
//            $columns = explode(',', $column);
//
//            // Iterate over each column and save a new model for each
//            foreach ($columns as $singleColumn) {
//                $newModel = new ReportTriggerMapping;
//                $newModel->attributes = $model->attributes; // Copy common attributes
//                $newModel->report_columns = trim($singleColumn);
//
//                // Save the script for the current column
//                $jsonScript = $this->SaveScriptForReport(trim($singleColumn), $rowWord, $scriptId);
//                $newModel->applied_script = $jsonScript;
//
//                // Save the new model
//                if (!$newModel->save()) {
//                    // Handle validation or save errors
//                    Yii::log("Error saving model for column: $singleColumn", CLogger::LEVEL_ERROR);
//                }
//            }
//        } else {
//            echo "Please check if all fields are filled properly with correct values.<br>";
//            echo "Error saving script for this report.";
//        }
//
//        $this->redirect(array('index')); // Redirect to index or any other action
//    }
//
//    $this->render('create', array(
//        'model' => $model,
//    ));
//}

       

//public function actionCreate()
//	{
//		$model=new ReportTriggerMapping;
//
//		// Uncomment the following line if AJAX validation is needed
//		// $this->performAjaxValidation($model);
//
//		if(isset($_POST['ReportTriggerMapping']))
//		{
//			$model->attributes=$_POST['ReportTriggerMapping'];
//			if($model->save())
//				$this->redirect(array('view','id'=>$model->id));
//                   
//		}
//
//		$this->render('create',array(
//			'model'=>$model,
//		));
//	}

   
	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
//	public function actionUpdate($id)
//	{
//		$model=$this->loadModel($id);
//
//		// Uncomment the following line if AJAX validation is needed
//		// $this->performAjaxValidation($model);
//
//		if(isset($_POST['ReportTriggerMapping']))
//		{
//                    $model->attributes=$_POST['ReportTriggerMapping'];
//                        $scriptId = $model->scipt_id;
//                        $column = $model->report_columns;
//                        $rowWord = $model->report_row;
//                        $pageId = $model->application_forms_id;
//                        
//                        if($scriptId!=null){
//                            
//                            $jsonScript = $this->SaveScriptForReport($column, $rowWord, $scriptId);
//                                $model->applied_script = $jsonScript; // Use $jsonScript directly
//
//                            
//                        }
//                        else{
//                            echo "Please check if all fields a filled property with correct values.<br>";
//                            echo "Error Saving Script for this report.";
//                        }
//			$model->attributes=$_POST['ReportTriggerMapping'];
//			if($model->save())
//				$this->redirect(array('view','id'=>$model->id));
//		}
//
//		$this->render('update',array(
//			'model'=>$model,
//		));
//	}

public function actionUpdate($report_id)
{
    // Assuming $report_id is provided as a parameter or set elsewhere
//     $report_id = 6;

    $models = $this->loadModelByReportId($report_id);
   
    $model = reset($models);

    // Fetch application_id and report_id from the first model
    $firstModel = reset($models);
    $applicationId = $firstModel->application_forms_id;
    $reportId = $firstModel->report_id;
    
    // Extract report_columns and script_id from all models
    $columnScripts = [];
    foreach ($models as $model) {
        $columnScripts[$model->report_columns] = $model->scipt_id;
    }

    // Organize models by application_id and report_id
    $groupedModels = [
        'application_id' => $applicationId,
        'report_id' => $reportId,
        'columnScripts' => $columnScripts,
    ];

    // Check if the form is submitted
    if (isset($_POST['ReportTriggerMapping'])) {
        // Assign the posted values to the model
        $model->attributes = $_POST['ReportTriggerMapping'];

        // Get the specific values needed for SaveScriptForReport
        $scriptId = $model->scipt_id;
        $column = $model->report_columns;
        $rowWord = $model->report_row;
        $pageId = $model->application_forms_id;

        // Validate and save the model
        if ($model->validate()) {
            // Call SaveScriptForReport before saving
            $jsonScript = $this->SaveScriptForReport($column, $rowWord, $scriptId);

            // Set the applied_script attribute
            $model->applied_script = $jsonScript;

            // Now save the model
            if ($model->save()) {
                $this->redirect(['view', 'id' => $model->id]);
            } else {
                // Handle the case where saving fails
                echo "Error saving the model.";
            }
        }
    }

    $this->render('update', [
        'model' => $model,
        'groupedModels' => $groupedModels,
    ]);
}
 protected function loadModelByReportId($report_id){
            
            $model = ReportTriggerMapping::model()->findAllByAttributes(array('report_id' =>$report_id));
            
            if($model === null){
                echo "Report Not Found in mapping";
            }
            
            return $model;
        
        }

public function actionSelectReport() {
    
       $report = Report::model()->findAll(array('order' => 'report_name'));
    $reportList = CHtml::listData($report, 'id', 'report_name');

   
    // Check if a report_id is submitted in the POST request
    $report_id = Yii::app()->request->getPost('selectedReportId');
    
    // If a report_id is present, redirect to the update action
    if ($report_id !== null) {
        $this->redirect(['update', 'report_id' => $report_id]);
    }

    // Render the selectUpdate view with the reportList
    $this->render('selectUpdate', array(
        'reportList' => $reportList,
    ));
}






	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('ReportTriggerMapping');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new ReportTriggerMapping('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['ReportTriggerMapping']))
			$model->attributes=$_GET['ReportTriggerMapping'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return ReportTriggerMapping the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=ReportTriggerMapping::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param ReportTriggerMapping $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='report-trigger-mapping-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
//public function actionQuery()
//{
//    $selectedReportId = isset($_POST['ReportTriggerMapping']['report_id']) ? $_POST['ReportTriggerMapping']['report_id'] : null;
//
//    $fetchQuery = Report::model()->findByPk($selectedReportId);
//    $reportColumns = $fetchQuery->reportColumn;
//    $db = Yii::app()->db;
//
//    if ($fetchQuery !== null) {
//        $sql = $fetchQuery->query;
//        // Execute the query
//        $command = $db->createCommand($sql);
//        $result = $command->queryAll();
//        $columnNames = array_keys($result[0]);
// // Print column names
//      echo  $reportColumns;
//
//        
//    }
//      else {
//        echo "Report not found";
//        echo "Error in running the query";
//        return; // Exit the function if the report is not found
//    }
//}
        
public function actionQuery()
{
    if (Yii::app()->request->isAjaxRequest) {
        $selectedReportId = Yii::app()->request->getPost('reportId');

        $fetchQuery = Report::model()->findByPk($selectedReportId);
        $reportColumns = $fetchQuery->reportColumn;
        $db = Yii::app()->db;

        if ($fetchQuery !== null) {
            $sql = $fetchQuery->query;
            // Execute the query
            $command = $db->createCommand($sql);
            $result = $command->queryAll();
            $columnNames = array_keys($result[0]);

            // Print column names
            echo $reportColumns;
        } else {
            echo "Report not found";
            echo "Error in running the query";
            return; // Exit the function if the report is not found
        }
    } else {
        echo "Error in Getting POST From Form ";
    }
}



public function actionGetScriptDetail(){
    if (Yii::app()->request->isAjaxRequest) {
            $scriptId = Yii::app()->request->getPost('scriptId');
            
            // Fetch script details based on the $scriptId
            $scriptModel = ScriptCode::model()->findByPk($scriptId);
            $detail = $scriptModel ? $scriptModel->Description : 'No description available.';

            // Render the details as a response
            echo $detail;
               Yii::app()->end();
        } else {
            throw new CHttpException(400, 'Invalid request.');
        }
       
}

public function actionReportScriptMapping() {
   
    $controllerId = isset($_GET['controller']) ? $_GET['controller'] : null;
    $actionId = isset($_GET['action']) ? $_GET['action'] : null;
        
    $applicationForm = ApplicationForms::model()->findByAttributes(['controller' => $controllerId, 'action' => $actionId]);

    $appliedScripts = array(); // Array to store applied scripts

    if ($applicationForm) {
        // Finding Form Based on the combination of Controller and Action
        $pageId = $applicationForm->id;
      
        $reportScriptModels = ReportTriggerMapping::model()->findAllByAttributes(['application_forms_id' => $pageId]);

        if ($reportScriptModels) {
            // Use a loop to iterate through the array of script models
            foreach ($reportScriptModels as $reportScriptModel) {
                $scriptCode = $reportScriptModel->applied_script;
                
                // Store $scriptCode in the array
                $appliedScripts[] = $scriptCode;
            }
        }
    }

    // Encode the array into JSON format
    $jsonResponse = json_encode($appliedScripts);
     print_r($jsonResponse);
     die();
    // Send the JSON response
    echo $jsonResponse;
}



private function SaveReportEffect()
{
    
    
   
}



//      public function actionColumnQuery() {
//    $selectedReportId = 6;
//    $fetchQuery = Report::model()->findByPk($selectedReportId);
//    $db = Yii::app()->db;
//
//    if ($fetchQuery !== null) {
//        $sql = $fetchQuery->query;
//
//            $command = $db->createCommand($sql);
//                $result = $command->queryAll();
//                  // Extract column names from the keys of any array in the result
//        $columnNames = array_keys($result[0]);
//
//        // Output or use the column names as needed
//        print_r($result);
////                print_r($result);
//                die();
//
//
//
//    } else {
//        echo "Report not found";
//        return; // Exit the function if the report is not found
//    }
//}

}






