<style>
    
</style><?php  
$controller = Yii::app()->getController();
//  print_r($controller);
// die();
    $actionId = $controller->getAction()->getId();
    $controllerId = $controller->getId();


echo CHtml::hiddenField('controllerId', $controllerId);
echo CHtml::hiddenField('actionId', $actionId);


 ?>
<head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<div class="report-container">
    <h2>Table Themes</h2>
    <table class="report-table" id="tableThemeTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Report ID</th>
                <th>Element Name</th>
                <th>Report Element</th>
                <th>Theme Name</th>
                <th>CSS Property</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($tableThemes as $theme): ?>
                <tr>
                    <td><?php echo $theme['id']; ?></td>
 <td>
            <?php
            $reportModel = Report::model()->findByPk($theme['report_id']);
            echo isset($reportModel) ? $reportModel->report_name : 'N/A';
            ?>
        </td>                    <td><?php echo $theme['report_element_name']; ?></td>
                    <td><?php echo $theme['report_element']; ?></td>
                    <td><?php echo $theme['theme_name']; ?></td>
                    <td><?php echo $theme['css_property']; ?></td>
                    <td><?php echo $theme['value']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<!--     <script src="http://localhost/report/AjaxFiles/datatable.js"></script>-->

<!--<script>
    $(document).ready(function () {
        $('.report-table').DataTable({
            // Add any DataTable options here
            "paging": true,
            "ordering": true,
            "info": true,
            // Add more options as needed
        });
    });
</script>-->
