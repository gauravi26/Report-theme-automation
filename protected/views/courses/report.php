<?php
$controller = Yii::app()->getController();
$actionId = $controller->getAction()->getId();
$controllerId = $controller->getId();

$columns = array('id', 'course_name', 'course_link'); // Add the desired columns for Courses model
$Courses = Courses::model()->findAll();

echo CHtml::hiddenField('controllerId', $controllerId);
echo CHtml::hiddenField('actionId', $actionId);
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses Report</title>
</head>
<body>
    <div class="report-container">
        <table class="report-table" id="Courses">
            <thead>
                <tr>
                    <?php foreach($columns as $columnName): ?>
                        <th><?php echo $columnName; ?></th>
                    <?php endforeach; ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach($Courses as $course): ?>
                    <tr>
                        <?php foreach($columns as $columnName): ?>
                            <td>
                                <?php switch ($columnName) {
                                    case 'course_link':
                                        echo CHtml::link($course->$columnName, $course->$columnName, array('target' => '_blank'));
                                        break;
                                    default:
                                        echo $course->$columnName;
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
//    var targetColumnNames = ['course_name']; var highlightColor = '#FFC000'; var columnIndices = targetColumnNames.map(function (columnName) { return Array.from(document.querySelectorAll('table th')).findIndex(th => th.textContent.trim() === columnName); }); if (columnIndices.every(index => index !== -1)) { columnIndices.forEach(function (columnIndex) { var cellsInColumn = document.querySelectorAll('table tbody td:nth-child(' + (columnIndex + 1) + ')'); cellsInColumn.forEach(function (cell) { cell.style.setProperty('background-color', highlightColor, 'important'); cell.style.setProperty('font-weight', 'bold', 'important'); }); }); } else { console.error('One or more columns not found: ' + targetColumnNames.join(', ')); }
    </script>
</body>
