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
</body>
