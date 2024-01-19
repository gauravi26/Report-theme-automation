<?php
/* @var $this ReportTriggerMappingController */
/* @var $model ReportTriggerMapping */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'application_forms_id'); ?>
		<?php echo $form->textField($model,'application_forms_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'report_id'); ?>
		<?php echo $form->textField($model,'report_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'scipt_id'); ?>
		<?php echo $form->textField($model,'scipt_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'report_columns'); ?>
		<?php echo $form->textField($model,'report_columns',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'report_row'); ?>
		<?php echo $form->textField($model,'report_row',array('size'=>60,'maxlength'=>255)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'applied_script'); ?>
		<?php echo $form->textArea($model,'applied_script',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->