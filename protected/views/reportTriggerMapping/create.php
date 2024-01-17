<?php
/* @var $this ReportTriggerMappingController */
/* @var $model ReportTriggerMapping */

$this->breadcrumbs=array(
	'Report Trigger Mappings'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ReportTriggerMapping', 'url'=>array('index')),
	array('label'=>'Manage ReportTriggerMapping', 'url'=>array('admin')),
);
?>

<h1>Create ReportTriggerMapping</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>