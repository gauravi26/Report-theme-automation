<?php
/* @var $this ReportTriggerMappingController */
/* @var $data ReportTriggerMapping */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('application_forms_id')); ?>:</b>
	<?php echo CHtml::encode($data->application_forms_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('report_id')); ?>:</b>
	<?php echo CHtml::encode($data->report_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('scipt_id')); ?>:</b>
	<?php echo CHtml::encode($data->scipt_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('report_columns')); ?>:</b>
	<?php echo CHtml::encode($data->report_columns); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('report_row')); ?>:</b>
	<?php echo CHtml::encode($data->report_row); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('applied_script')); ?>:</b>
	<?php echo CHtml::encode($data->applied_script); ?>
	<br />


</div>