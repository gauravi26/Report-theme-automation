<?php

Yii::app()->clientScript->registerCoreScript('jquery');

 $report = Report::model()->findAll(array('order' => 'report_name'));
 $reportList = CHtml::listData($report, 'id', 'report_name');
?>

<div class="form">
    <form id="queryForm" method="post" action="<?php echo Yii::app()->createUrl('reportTriggerMapping/query'); ?>">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'report-trigger-mapping-form',
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
	 <?php echo $form->labelEx($model, 'report_id'); ?>

        <select name="<?php echo CHtml::activeName($model, 'report_id'); ?>">
            <option value="" disabled selected>Select Report</option>
            <?php foreach ($reportList as $id => $reportName): ?>
                <option value="<?php echo $id; ?>"><?php echo $reportName; ?></option>
            <?php endforeach; ?>
        </select>

        <?php echo $form->error($model, 'report_id'); ?>
	</div>
                <div id="queryResultContainer"></div>

        



	<div class="row">
		<?php echo $form->labelEx($model,'scipt_id'); ?>
		<?php echo $form->textField($model,'scipt_id'); ?>
		<?php echo $form->error($model,'scipt_id'); ?>
	</div>

	<div class="row">
    <?php echo $form->labelEx($model, 'report_columns'); ?>

    <?php
    $columns = array("column1", "column2", "column3"); // Replace this with your actual dynamic column names
    echo $form->dropDownList($model, 'report_columns', CHtml::listData($columns, 'column_name', 'column_name'), array('prompt' => 'Select Column', 'id' => 'columnOptions'));
    ?>

    <?php echo $form->error($model, 'report_columns'); ?>
</div>


	<div class="row">
		<?php echo $form->labelEx($model,'report_row'); ?>
		<?php echo $form->textField($model,'report_row',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'report_row'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>
    </form>
        <div id="queryResultContainer"></div>

<script>
       $(document).ready(function () {
    // Bind AJAX call to the change event of the select box
    $("select[name='ReportTriggerMapping[report_id]']").change(function () {
        // Use AJAX to submit the form
        $.ajax({
            type: "POST",
            url: $("#queryForm").attr("action"),
            data: $("#queryForm").serialize(),
            success: function (response) {
                // Update the queryResultContainer div with the response
                $("#queryResultContainer").html(response);
            }
        });
    });

    // Prevent the default form submission
    $("#queryForm").submit(function (event) {
        event.preventDefault();
    });
});

    </script>

</div><!-- form -->