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
				'actions'=>array('create','update', 'query','columnQuery'),
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
	public function actionCreate()
	{
		$model=new ReportTriggerMapping;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['ReportTriggerMapping']))
		{
			$model->attributes=$_POST['ReportTriggerMapping'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['ReportTriggerMapping']))
		{
			$model->attributes=$_POST['ReportTriggerMapping'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('update',array(
			'model'=>$model,
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
      public function actionQuery() {
    $selectedReportId = isset($_POST['ReportTriggerMapping']['report_id']) ? $_POST['ReportTriggerMapping']['report_id'] : null;

    $fetchQuery = Report::model()->findByPk($selectedReportId);

    if ($fetchQuery !== null) {
        $modelClassName = $fetchQuery->query; 

        // Execute the query
        $command = Yii::app()->db->createCommand($modelClassName);
        $sqlQuery = $command->getText();

        // Parse the SQL query to extract column names
        preg_match('/SELECT\s+(.*?)\s+FROM/i', $sqlQuery, $matches);
        $columns = explode(',', $matches[1]);

        // Trim and remove aliases from column names
        $columns = array_map(function($column) {
            return trim(preg_replace('/\s+AS\s+\w+/', '', $column));
        }, $columns);

        // Display column names in a list
    echo '<ul>';
    foreach ($columns as $column) {
        echo '<li>' . htmlspecialchars($column) . '</li>';
    }
    echo '</ul>';
} else {
    echo "Report not found";
    echo "Error in running the query";
    return; // Exit the function if the report is not found
}

//    $columns = array_keys($modelClassName::model()->getTableSchema()->columns);
//    
//    // Create a mapping of column names to numbers
//    $columnMapping = array_combine($columns, range(1, count($columns)));
//
//    $records = $modelClassName::model()->findAll();
//
//    // Check if it's an AJAX request
//    if(Yii::app()->request->isAjaxRequest) {
//        // Return the result as JSON along with column mapping
//        echo CJSON::encode(array(
//            'columns' => $columns,
//            'columnMapping' => $columnMapping,
//            'totalRecords' => count($records),
//        ));
//        Yii::app()->end();
//    } else {
//        // Display the result directly for non-AJAX requests
//        echo "Columns: " . implode(", ", $columns) . "<br>";
//        echo "Total Records: " . count($records) . "<br>";
//    }
}

public function actionColumnQuery() {
    print_r($_POST);
        die();
        $selectedReportId = isset($_POST['ReportTriggerMapping']['report_id']) ? $_POST['ReportTriggerMapping']['report_id'] : null;

//    $selectedReportId = 7;
    $fetchQuery = Report::model()->findByPk($selectedReportId);

    if ($fetchQuery !== null) {
        $modelClassName = $fetchQuery->query; 

        // Execute the query
        $command = Yii::app()->db->createCommand($modelClassName);
        $sqlQuery = $command->getText();

        // Parse the SQL query to extract column names
        preg_match('/SELECT\s+(.*?)\s+FROM/i', $sqlQuery, $matches);
        $columns = explode(',', $matches[1]);

        // Trim and remove aliases from column names
        $columns = array_map(function($column) {
            return trim(preg_replace('/\s+AS\s+\w+/', '', $column));
        }, $columns);

        // Now you can use $columns as needed
        print_r($columns);
    } else {
        echo "Report not found";
        echo "Error in running the query";

        return; // Exit the function if the report is not found
    }
}


    

    



}
