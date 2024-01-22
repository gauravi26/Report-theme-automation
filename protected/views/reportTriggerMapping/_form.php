<style>
    .row {
        margin-bottom: 10px; /* Adjust the margin as needed */
    }

    .label-column {
        display: inline-block;
        width: 150px; /* Adjust the width as needed */
    }

    .text-column {
        display: inline-block;
        width: 300px; /* Adjust the width as needed */
    }

    .dropdown-column {
        display: inline-block;
        width: 150px; /* Adjust the width as needed */
    }
</style>

<?php

Yii::app()->clientScript->registerCoreScript('jquery');

$application_form = applicationForms::model()->findAll(array('order' => 'menu_form'));
$application_form_List = CHtml::listData($application_form, 'id', 'menu_form');


 $report = Report::model()->findAll(array('order' => 'report_name'));
 $reportList = CHtml::listData($report, 'id', 'report_name');
 
 $scriptCodes = ScriptCode::model()->findAll(array('order' => 'effects'));
$scriptCodeList = CHtml::listData($scriptCodes, 'id', 'effects');

?>

<div class="form">
<!--    <form id="queryForm" method="post" action="<?php echo Yii::app()->createUrl('reportTriggerMapping/query'); ?>">-->

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
        <?php echo $form->dropDownList($model,'application_forms_id', $application_form_List, array('prompt' => 'Select Page', )); ?>
		<?php echo $form->error($model,'application_forms_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'report_id'); ?>
            <?php echo $form->dropDownList($model, 'report_id', $reportList, array('prompt' => 'Select Effect', 'id' => 'reportIdDropbox')); ?>
		<?php echo $form->error($model,'report_id'); ?>
	</div>

                <div id="queryResultContainer"></div>

        
        <div class="row">
            <?php echo $form->labelEx($model, 'scipt_id'); ?>
            <?php echo $form->dropDownList($model, 'scipt_id', $scriptCodeList, array('prompt' => 'Select Effect', 'id' => 'fieldIdDropdown')); ?>
            <?php echo $form->error($model, 'scipt_id'); ?>
        </div>

        <div id="scriptDetail">
            <?php
            if (isset($_POST['ReportTriggerMapping']['scipt_id'])) {
                $selectedScriptId = $_POST['ReportTriggerMapping']['scipt_id'];
                $scriptModel = ScriptCode::model()->findByPk($selectedScriptId);
                $detail = $scriptModel ? $scriptModel->Description : 'No description available.';
                echo $detail;
            }
            ?>
        </div>

	<div class="row">
		<?php echo $form->labelEx($model,'report_columns'); ?>
                <?php echo "Columns of Report Selected. Remove the column for which script is NOT required" ?>
		<?php echo $form->textField($model,'report_columns',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'report_columns'); ?>
	</div>
                
                <!-- Add this container in your view file -->
<div id="columnScriptFields"></div>


	<div class="row">
		<?php echo $form->labelEx($model,'report_row'); ?>
                <?php echo "Enter the word or Row with words to apply script on Row and cell " ?>
                <?php echo $form->textField($model,'report_row',array('size'=>60,'maxlength'=>255)); ?>
            <br>
		<?php echo "Please read Detail of script applied to see effect of script for row and cell  " ?>
                    <?php echo $form->error($model,'report_row'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>
<!--    </form>-->
        <div id="queryResultContainer"></div>


        
<script>
 $(document).ready(function(){
    $('#reportIdDropbox').change(function(){
        var selectedReportId = $(this).val();

        // Perform an AJAX request to fetch details based on the selected report_id
        $.ajax({
            url: 'index.php?r=reportTriggerMapping/query', // Update with the actual URL
            type: 'POST',
            data: {reportId: selectedReportId},
            success: function(response){
                // Clear existing input fields and container content
                $("input[name='ReportTriggerMapping[report_columns]']").val(response);
                $('#columnScriptFields').empty();

                // Split the response by comma to get column names
                var columnNames = response.split(',');

                // Create input fields dynamically for each column and populate with column names
                for (var i = 0; i < columnNames.length; i++) {
                    var columnName = columnNames[i].trim();

                    // Create a div for each pair of (label, dropdown) + (label, text field)
                    var inputFieldContainer = $('<div class="row"></div>');

                    // Create and append label for the text field
                    var label = $('<label for="ReportTriggerMapping_columns_' + columnName + '">' + columnName + '</label>');
                    inputFieldContainer.append(label);

                    // Create and append the text field
                    var textField = $('<input>').attr({
                        type: 'text',
                        id: 'ReportTriggerMapping_columns_' + columnName,
                        name: 'ReportTriggerMapping[columns][' + columnName + ']',
                        value: columnName, // Set the value to the column name
                        size: '60',
                        maxlength: '255',
                        class: 'textField',
                    });
                    inputFieldContainer.append(textField);

                    // Create and append script_id dropdown with unique id and name
                    var sciptIdDropdown = $('<select>').attr({
                        id: 'fieldIdDropdown_' + columnName,
                        name: 'ReportTriggerMapping[scipt_id][' + columnName + ']',
                    }).html($('#fieldIdDropdown').html()); // Copy options from the original dropdown
                    inputFieldContainer.append(sciptIdDropdown);

                    // Append the container to the main container
                    $('#columnScriptFields').append(inputFieldContainer).append('<br>');
                }
            },
            error: function(){
                console.log('Error fetching script details');
            }
        });
    });
});

</script>
<script>
    $(document).ready(function(){
        $('#fieldIdDropdown').change(function(){
            var selectedScriptId = $(this).val();
            
            // Perform an AJAX request to fetch details based on the selected script_id
            $.ajax({
                url: 'index.php?r=reportTriggerMapping/getScriptDetail', // Update with the actual URL
                type: 'POST',
                data: {scriptId: selectedScriptId},
                success: function(response){
                    // Update the content of the #scriptDetail div with the fetched details
                    $('#scriptDetail').html(response);
                },
                error: function(){
                    console.log('Error fetching script details');
                }
            });
        });
    });
</script>
</div><!-- form -->