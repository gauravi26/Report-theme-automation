<?php
/* @var $this ReportTriggerMappingController */
/* @var $models array */

$this->breadcrumbs=array(
    'Report Trigger Mappings'=>array('index'),
    // Add other breadcrumbs as needed
);

$this->menu=array(
    array('label'=>'List ReportTriggerMapping', 'url'=>array('index')),
    array('label'=>'Create ReportTriggerMapping', 'url'=>array('create')),
    // Add other menu items as needed
);

$application_form = applicationForms::model()->findAll(array('order' => 'menu_form'));
$application_form_List = CHtml::listData($application_form, 'id', 'menu_form');

$report = Report::model()->findAll(array('order' => 'report_name'));
$reportList = CHtml::listData($report, 'id', 'report_name');

$scriptCodes = ScriptCode::model()->findAll(array('order' => 'effects'));
$scriptCodeList = CHtml::listData($scriptCodes, 'id', 'effects');
?>

<h1>Update ReportTriggerMappings</h1>

<?php $form=$this->beginWidget('CActiveForm', array(
    'id'=>'update-multiple-form',
    'enableAjaxValidation'=>false,
)); ?>

<?php foreach ($models as $model): ?>
    <div class="form">
        <?php echo CHtml::hiddenField("ReportTriggerMapping[$model->id][id]", $model->id); ?>
        <?php echo CHtml::hiddenField("ReportTriggerMapping[$model->id][report_id]", $model->report_id); ?>
        <?php echo CHtml::hiddenField("ReportTriggerMapping[$model->id][application_forms_id]", $model->application_forms_id); ?>

        <div class="row">
            <?php echo CHtml::encode($model->report_columns); ?>
        </div>

        <div class="row">
            <?php echo CHtml::activeLabelEx($model, "[$model->id]scipt_id"); ?>
            <?php echo CHtml::activeDropDownList($model, "[$model->id]scipt_id", $scriptCodeList, array('prompt' => 'Select Script')); ?>
            <?php echo CHtml::error($model, "[$model->id]scipt_id"); ?>
        </div>

        <div class="row">
            <?php echo CHtml::activeLabelEx($model, "[$model->id]report_row"); ?>
            <?php echo CHtml::activeTextField($model, "[$model->id]report_row", array('size'=>60,'maxlength'=>255)); ?>
            <?php echo CHtml::error($model, "[$model->id]report_row"); ?>
        </div>
    </div>
<?php endforeach; ?>

<div class="row buttons">
    <?php echo CHtml::submitButton('Save'); ?>
</div>

<?php $this->endWidget(); ?>