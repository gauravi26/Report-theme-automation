<?php
/* @var $this ReportThemeMappingController */
/* @var $model ReportThemeMapping */

$this->breadcrumbs=array(
	'Report Theme Mappings'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List ReportThemeMapping', 'url'=>array('index')),
	array('label'=>'Create ReportThemeMapping', 'url'=>array('create')),
	array('label'=>'Update ReportThemeMapping', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete ReportThemeMapping', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ReportThemeMapping', 'url'=>array('admin')),
);
?>

<h1>View ReportThemeMapping #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'application_forms_id',
		'report_id',
		'theme_ID',
	),
)); ?>
