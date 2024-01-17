<?php
/* @var $this ReportTriggerMappingController */
/* @var $model ReportTriggerMapping */

$this->breadcrumbs=array(
	'Report Trigger Mappings'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List ReportTriggerMapping', 'url'=>array('index')),
	array('label'=>'Create ReportTriggerMapping', 'url'=>array('create')),
	array('label'=>'Update ReportTriggerMapping', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete ReportTriggerMapping', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ReportTriggerMapping', 'url'=>array('admin')),
);
?>

<h1>View ReportTriggerMapping #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'application_forms_id',
		'report_id',
		'scipt_id',
		'report_columns',
		'report_row',
	),
)); ?>
