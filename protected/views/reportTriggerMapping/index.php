<?php
/* @var $this ReportTriggerMappingController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Report Trigger Mappings',
);

$this->menu=array(
	array('label'=>'Create ReportTriggerMapping', 'url'=>array('create')),
	array('label'=>'Manage ReportTriggerMapping', 'url'=>array('admin')),
);
?>

<h1>Report Trigger Mappings</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
