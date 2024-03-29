<?php
/* @var $this ReportTriggerMappingController */
/* @var $model ReportTriggerMapping */

$this->breadcrumbs=array(
    'Report Trigger Mappings'=>array('index'),
    'Manage',
);

$this->menu=array(
    array('label'=>'List ReportTriggerMapping', 'url'=>array('index')),
    array('label'=>'Create ReportTriggerMapping', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
    $('.search-form').toggle();
    return false;
});
$('.search-form form').submit(function(){
    $('#report-trigger-mapping-grid').yiiGridView('update', {
        data: $(this).serialize()
    });
    return false;
});
");
?>

<h1>Manage Report Trigger Mappings</h1>

<p>
    You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
    or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
    <?php $this->renderPartial('_search',array(
        'model'=>$model,
    )); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
    'id'=>'report-trigger-mapping-grid',
    'dataProvider'=>$model->search(),
    'filter'=>$model,
    'columns'=>array(
        'id',
        'application_forms_id',
        'report_id',
        'scipt_id',
        'report_columns',
        'report_row',
        /*
        'applied_script',
        */
        array(
            'class'=>'CButtonColumn',
            'template'=>'{update}{delete}',
            'buttons'=>array(
                'update'=>array(
                    'url'=>'Yii::app()->createUrl("reportTriggerMapping/selectReport", array("id"=>$data->id))',
                ),
            ),
        ),
    ),
)); ?>
