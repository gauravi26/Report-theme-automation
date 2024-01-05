<?php

class ThemeForReportController extends Controller
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
				'actions'=>array('create','update', 'reportTheme','tabThemeReport','saveThemeValues'),
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
		$model=new ThemeForReport;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['ThemeForReport']))
		{
			$model->attributes=$_POST['ThemeForReport'];
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

		if(isset($_POST['ThemeForReport']))
		{
			$model->attributes=$_POST['ThemeForReport'];
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
		$dataProvider=new CActiveDataProvider('ThemeForReport');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new ThemeForReport('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['ThemeForReport']))
			$model->attributes=$_GET['ThemeForReport'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return ThemeForReport the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=ThemeForReport::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param ThemeForReport $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='theme-for-report-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
        
//        public function actionReportTheme(){
//            
//             $model = new ThemeForReport;
//
//            if (isset($_POST['ThemeForReport'])) {
//                $model->attributes = $_POST['ThemeForReport'];
//
//                if ($model->validate()) {
//                    // Save only the theme_name to the database
//                    if ($this->saveThemeName($model->theme_name)) {
////                       
//                       $reportElementCssSets = ReportElementCssSet::model()->findAll();
//                          foreach ($reportElementCssSets as $reportElementCssSet) {
//                            $themeReportModel = new ThemeForReport;
//                            $themeReportModel->attributes = array(
//                                'theme_name' => $model->theme_name,  // Use $model->theme_name here instead of $themeName
//                                'element_id' => $reportElementCssSet->element_id,
//                                'css_property_id' => $reportElementCssSet->css_property_id,
//                                // You may need to set other attributes or modify as per your needs
//                            );
//                            
//
//            // Save the ThemeForReport model for each pair
//            $themeReportModel->save();
//        }
//                     
//                    }
//                }
//            }
//
//            $this->render('createTheme', array(
//                'model' => $model,
//            ));
//            
//        }
//        protected function saveThemeName($themeName)
//{
//    $themeModel = new ThemeForReport;
//    $themeModel->theme_name = $themeName;
//
//    return $themeModel->save();
//}
        
 public function actionReportTheme() {
    $model = new ThemeForReport;

    if (isset($_POST['ThemeForReport'])) {
        $model->attributes = $_POST['ThemeForReport'];

        if ($model->validate()) {
            // Save only the theme_name to the database
            if ($this->saveThemeName($model->theme_name)) {
                $reportElementCssSets = ReportElementCssSet::model()->findAll();
                
                $firstInstanceId = null; // Variable to store the id of the first instance

                foreach ($reportElementCssSets as $reportElementCssSet) {
                    $themeReportModel = new ThemeForReport;
                    $themeReportModel->attributes = array(
                        'theme_name' => $model->theme_name,
                        'element_id' => $reportElementCssSet->element_id,
                        'css_property_id' => $reportElementCssSet->css_property_id,
                        // You may need to set other attributes or modify as per your needs
                    );

                    // If it's the first iteration, save the first instance and store its id
                    if ($firstInstanceId === null) {
                        $themeReportModel->save();
                        $firstInstanceId = $themeReportModel->id;

                        // Set reference_id to the id of the first instance
                        $themeReportModel->reference_id = $firstInstanceId;
                        $themeReportModel->save();
                    } else {
                        // Set reference_id to the id of the first instance
                        $themeReportModel->reference_id = $firstInstanceId;
                        $themeReportModel->save();
                    }
                }
                $this->redirect(array('tabThemeReport', 'themeReportId' => $firstInstanceId));

                
            }
        }
    }

    $this->render('createTheme', array(
        'model' => $model,
    ));
}

protected function saveThemeName($themeName) {
    $themeModel = new ThemeForReport;
    $themeModel->theme_name = $themeName;

    return $themeModel->save();
}

public function actionTabThemeReport($themeReportId) {
    // Fetch the ThemeForReport model based on the themeReportId
    $themeReportModel = ThemeForReport::model()->findByPk($themeReportId);
    $rerferenceId = $themeReportModel -> reference_id;
// Fetch associated element and property sets based on the reference_id
    $associatedSets = ThemeForReport::model()->findAllByAttributes(array('reference_id' => $themeReportId));
    

     $this->render('reportThemeTab', array(
        'themeReportModel' => $themeReportModel,
        'associatedSets' => $associatedSets,
    ));
}

//public function actionSaveThemeValues() {
//    print_r($_POST);  // Print POST data for debugging
//die();
//    if (isset($_POST['values'])) {
//        foreach ($_POST['values'] as $key => $value) {
//            // Extract element_id and css_property_id from the input field name
//            list($element_id, $css_property_id) = explode('_', $key);
//
//            // Find the corresponding record and update the value
//            $themeReportModel = ThemeForReport::model()->findByAttributes(array(
//                'reference_id' => $_POST['themeReportId'],
//                'element_id' => $element_id,
//                'css_property_id' => $css_property_id,
//            ));
//
//            if ($themeReportModel !== null) {
//                $themeReportModel->value = $value;
//                
//                // Debug: Print the values before saving
//                echo "Element ID: $element_id, CSS Property ID: $css_property_id, New Value: $value<br>";
//
//                // Save the changes
//                if ($themeReportModel->save()) {
//                    echo "Record updated successfully<br>";
//                } else {
//                    echo "Failed to update record<br>";
//                    print_r($themeReportModel->getErrors()); // Display errors, if any
//                    die(); // Stop execution for debugging
//                }
//            } else {
//                echo "Record not found for Element ID: $element_id, CSS Property ID: $css_property_id<br>";
//            }
//        }
//    }
//
//    // Redirect to the tab view page
//    $this->redirect(array('tabThemeReport', 'themeReportId' => $_POST['themeReportId']));
//}



       public function actionSaveThemeValues() {
    // Print POST data for debugging
//    print_r($_POST);
//    die();
    if (isset($_POST['themeReportId'])) {
    $referenceId = $_POST['themeReportId'];
    foreach ($_POST as $key => $value) {
        // Check if the input field name matches the pattern "{theme_name} - {element_id}_{css_property_id}"
        if (preg_match('/(.+) - (\d+)_(\d+)_value/', $key, $matches)) {
            $theme_name = $matches[1];
            $element_id = $matches[2];
            $css_property_id = $matches[3];

            // Find the corresponding record and update the value
            $themeReportModel = ThemeForReport::model()->findByAttributes(array(
                'reference_id' => $referenceId,
                'element_id' => $element_id,
                'css_property_id' => $css_property_id,
            ));
            
             print_r($themeReportModel);
                die();

               
                if ($themeReportModel !== null) {
                    $themeReportModel->value = $value;

                    // Debug: Print the values before saving
                    echo "Theme Name: $theme_name, Element ID: $element_id, CSS Property ID: $css_property_id, New Value: $value<br>";

                    // Save the changes
                    if ($themeReportModel->save()) {
                        echo "Record updated successfully<br>";
                    } else {
                        echo "Failed to update record<br>";
                        print_r($themeReportModel->getErrors()); // Display errors, if any
                        die(); // Stop execution for debugging
                    }
                } else {
                    echo "Record not found for Theme Name: $theme_name, Element ID: $element_id, CSS Property ID: $css_property_id<br>";
                }
            }
        }
    }

    // Redirect to the tab view page
    $this->redirect(array('tabThemeReport', 'themeReportId' => $_POST['themeReportId']));
}


}
