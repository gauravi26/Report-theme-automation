<?php  
$controller = Yii::app()->getController();
//  print_r($controller);
// die();
    $actionId = $controller->getAction()->getId();
    $controllerId = $controller->getId();


echo CHtml::hiddenField('controllerId', $controllerId);
echo CHtml::hiddenField('actionId', $actionId);
 ?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'report-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'report_name'); ?>
		<?php echo $form->textField($model,'report_name',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'report_name'); ?>
	</div>
        
        <div class="row">
		<?php echo $form->labelEx($model,'report_grid_container_id'); ?>
		<?php echo $form->textField($model,'report_grid_container_id',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'report_grid_container_id'); ?>
            <p>Please enter class name of Grid Container . Default : report-container</p>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'report_table_id'); ?>
		<?php echo $form->textField($model,'report_table_id',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'report_table_id'); ?>
            <p>Please enter class name of Report table . Default : report-table</p>
	</div>

	

	<div class="row">
		<?php echo $form->labelEx($model,'details'); ?>
		<?php echo $form->textField($model,'details',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'details'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->