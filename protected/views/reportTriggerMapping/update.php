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

<?php foreach ($models as $model): ?>
    <?php
    // Fetch application_id and report_id from the first model
    $applicationId = $model->application_forms_id;
    $reportId = $model->report_id;

    // Extract report_columns and script_id from all models
    $columnScripts = [];
    $modelIds = [];

    foreach ($models as $innerModel) {
        $columnScripts[$innerModel->report_columns] = $innerModel->scipt_id;
        $modelIds[$innerModel->report_columns] = $innerModel->id;
    }

    // Organize models by application_id and report_id
    $groupedModels = [
        'application_id' => $applicationId,
        'report_id' => $reportId,
        'columnScripts' => $columnScripts,
        'modelIds' => $modelIds,
    ];
    
//    print_r($groupedModels);
//die();
    ?>



    <?php $form=$this->beginWidget('CActiveForm', array(
        'id'=>'update-form-' . $model->id,
        'enableAjaxValidation'=>false,
    )); ?>

    <div class="form">
        
        <?php echo CHtml::hiddenField('model_id', $model->id); ?>

        
         <?php echo CHtml::hiddenField("ReportTriggerMapping[$model->id][report_id]", $model->report_id); ?>
        <?php echo CHtml::hiddenField("ReportTriggerMapping[$model->id][application_forms_id]", $model->application_forms_id); ?>


      <div class="row">
    <?php echo $model->report_columns; ?>
</div>


        <div class="row">
            <?php echo $form->labelEx($model, 'scipt_id'); ?>
            <?php echo $form->dropDownList($model, 'scipt_id', $scriptCodeList, array('prompt' => 'Select Script')); ?>
            <?php echo $form->error($model, 'scipt_id'); ?>
        </div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'report_row'); ?>

                <?php echo $form->textField($model,'report_row',array('size'=>60,'maxlength'=>255)); ?>
            <br>

                    <?php echo $form->error($model,'report_row'); ?>
	</div>

      <div class="row buttons">
    <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
</div>

    </div>

    <?php $this->endWidget(); ?>
<?php endforeach; ?>
