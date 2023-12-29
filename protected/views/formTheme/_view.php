<?php
/* @var $this FormThemeController */
/* @var $data FormTheme */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('form_element')); ?>:</b>
	<?php echo CHtml::encode($data->form_element); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('element')); ?>:</b>
	<?php echo CHtml::encode($data->element); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('element_id')); ?>:</b>
	<?php echo CHtml::encode($data->element_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('property')); ?>:</b>
	<?php echo CHtml::encode($data->property); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('value')); ?>:</b>
	<?php echo CHtml::encode($data->value); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('theme_ID')); ?>:</b>
	<?php echo CHtml::encode($data->theme_ID); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('form_theme_name')); ?>:</b>
	<?php echo CHtml::encode($data->form_theme_name); ?>
	<br />

	*/ ?>

</div>