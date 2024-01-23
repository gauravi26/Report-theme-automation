<?php
/* @var $this ReportTriggerMappingController */
/* @var $model ReportTriggerMapping */

$this->breadcrumbs=array(
	'Report Trigger Mappings'=>array('index'),
	$model->id=>array('view','report_id'=>$model->report_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ReportTriggerMapping', 'url'=>array('index')),
	array('label'=>'Create ReportTriggerMapping', 'url'=>array('create')),
	array('label'=>'View ReportTriggerMapping', 'url'=>array('view', 'report_id'=>$model->report_id)),
	array('label'=>'Manage ReportTriggerMapping', 'url'=>array('admin')),
);

$application_form = applicationForms::model()->findAll(array('order' => 'menu_form'));
$application_form_List = CHtml::listData($application_form, 'id', 'menu_form');


 $report = Report::model()->findAll(array('order' => 'report_name'));
 $reportList = CHtml::listData($report, 'id', 'report_name');
 
 $scriptCodes = ScriptCode::model()->findAll(array('order' => 'effects'));
$scriptCodeList = CHtml::listData($scriptCodes, 'id', 'effects');
?>

<h1>Update ReportTriggerMapping <?php echo $model->id; ?></h1>

<?php $form=$this->beginWidget('CActiveForm', array(
    'id'=>'update-form',
    'enableAjaxValidation'=>false,
)); ?>

<div class="form">

    <?php echo $form->hiddenField($model, 'application_id', array('value' => $groupedModels['application_id'])); ?>
    <?php echo $form->hiddenField($model, 'report_id', array('value' => $groupedModels['report_id'])); ?>

     <!-- Dropdown for application_id -->
    <div class="row">
        <?php echo $form->labelEx($model, 'application_forms_id'); ?>
        <?php echo $form->dropDownList($model, 'application_forms_id', $application_form_List); ?>
    </div>

    <!-- Dropdown for report_id -->
    <div class="row">
        <?php echo $form->labelEx($model, 'report_id'); ?>
        <?php echo $form->dropDownList($model, 'report_id', $reportList); ?>
    </div>
    
    
    <?php foreach ($groupedModels['columnScripts'] as $column => $script_id): ?>
    <div class="row">
        <?php echo $form->labelEx($model, $column); ?>
        <?php echo $form->dropDownList($model, "columnScripts[$column]", $scriptCodeList, array('prompt' => 'Select Script', 'options' => array($script_id => array('selected' => true)))); ?>
    </div>
<?php endforeach; ?>


    <div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

</div>

<?php $this->endWidget(); ?>
