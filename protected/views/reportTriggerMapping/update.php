<?php
/* @var $this ReportTriggerMappingController */
/* @var $model ReportTriggerMapping */

$this->breadcrumbs=array(
	'Report Trigger Mappings'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ReportTriggerMapping', 'url'=>array('index')),
	array('label'=>'Create ReportTriggerMapping', 'url'=>array('create')),
	array('label'=>'View ReportTriggerMapping', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage ReportTriggerMapping', 'url'=>array('admin')),
);
?>

<h1>Update ReportTriggerMapping <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>