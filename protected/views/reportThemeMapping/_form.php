<?php
/* @var $this ReportThemeMappingController */
/* @var $model ReportThemeMapping */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'report-theme-mapping-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'application_forms_id'); ?>
		<?php echo $form->textField($model,'application_forms_id'); ?>
		<?php echo $form->error($model,'application_forms_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'report_id'); ?>
		<?php echo $form->textField($model,'report_id'); ?>
		<?php echo $form->error($model,'report_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'theme_ID'); ?>
		<?php echo $form->textField($model,'theme_ID'); ?>
		<?php echo $form->error($model,'theme_ID'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->