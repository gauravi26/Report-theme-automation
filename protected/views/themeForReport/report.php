<?php
$controller = Yii::app()->getController();
$actionId = $controller->getAction()->getId();
$controllerId = $controller->getId();

$columns = array_keys(ThemeForReport::model()->getTableSchema()->columns);
$ReportThemes = ThemeForReport::model()->findAll();

echo CHtml::hiddenField('controllerId', $controllerId);
echo CHtml::hiddenField('actionId', $actionId);
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report Theme Dynamic</title>
</head>
<body>
    <div class="report-container">
        <table class="report-table" id="ThemeforReport">
            <thead>
                <tr>
                    <?php foreach($columns as $columnName): ?>
                        <th><?php echo $columnName; ?></th> <!-- Fix: Correct variable name -->
                    <?php endforeach; ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach($ReportThemes as $ReportTheme): ?> <!-- Fix: Added ":" -->
                    <tr>
                        <?php foreach($columns as $columnName): ?>
                            <td>
                                <?php switch ($columnName) {
                                    default:
                                        echo $ReportTheme[$columnName];
                                        break;
                                } ?>
                            </td>
                        <?php endforeach; ?>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
<script>
    $(document).ready(function () {
        // Assume the JSON response is stored in a variable named 'responseData'
        var responseData = {"columns":["id","reference_id","theme_name","element_id","css_property_id","value"],"totalRecords":204};

        // Example: Apply styling based on the 'css_property_id' column
        var cssPropertyIdColumnIndex = responseData.columns.indexOf('css_property_id');
        var cssPropertyIdElements = $('table td:nth-child(' + (cssPropertyIdColumnIndex + 1) + ')');

        cssPropertyIdElements.each(function () {
            // Apply your styling logic here based on the 'css_property_id' column content
            var value = parseInt($(this).text());
            if (value >= 30) {
                $(this).css('color', 'green');
            } else {
                $(this).css('color', 'red');
            }
            // Add more conditions as needed for your specific styling logic
        });
    });
</script>

</body>
