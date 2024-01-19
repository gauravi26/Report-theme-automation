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
            
            // Perform an AJAX request to fetch details based on the selected script_id
            $.ajax({
                url: 'index.php?r=reportTriggerMapping/query', // Update with the actual URL
                type: 'POST',
                data: {reportId: selectedReportId},
                success: function(response){
                    // Update the content of the #scriptDetail div with the fetched details
                                  $("input[name='ReportTriggerMapping[report_columns]']").val(response);

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