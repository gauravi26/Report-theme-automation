<?php
$controller = Yii::app()->getController();
$actionId = $controller->getAction()->getId();
$controllerId = $controller->getId();

$columns = array('student_id', 'first_name', 'last_name','percentage', 'course_id', 'academic_status');
$StudentInformation = StudentInformation::model()->findAll(); // Assuming StudentInformation is your model

echo CHtml::hiddenField('controllerId', $controllerId);
echo CHtml::hiddenField('actionId', $actionId);
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Information Report</title>
</head>
<body>
    <div class="report-container">
        <table class="report-table" id="StudentInformation">
            <thead>
                <tr>
                    <?php foreach($columns as $columnName): ?>
                        <th><?php echo $columnName; ?></th>
                    <?php endforeach; ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach($StudentInformation as $student): ?>
                    <tr>
                        <?php foreach($columns as $columnName): ?>
                            <td>
                                <?php switch ($columnName) {
                                    case 'course_id':
                                        $coureName = Courses::model()->findByPk($student[$columnName]);
                                            echo isset($coureName)? $coureName->course_name: 'N/A';
                                        break;
                                    default:
                                        echo $student->$columnName;
                                        break;
                                } ?>
                            </td>
                        <?php endforeach; ?>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
  
<!--<script>
  var targetColumnNames = ['last_name']; 
    var highlightColor = '#FFC000'; // Change this to the desired highlight color

    // Find the indices of the target columns in the table header
    var columnIndices = targetColumnNames.map(function (columnName) {
        return Array.from(document.querySelectorAll('table th')).findIndex(th => th.textContent.trim() === columnName);
    });

    // If all target columns are found, apply the script
    if (columnIndices.every(index => index !== -1)) {
        columnIndices.forEach(function (columnIndex) {
            var cellsInColumn = document.querySelectorAll('table tbody td:nth-child(' + (columnIndex + 1) + ')');

            cellsInColumn.forEach(function (cell) {
                cell.style.setProperty('background-color', highlightColor, 'important');
                cell.style.setProperty('font-weight', 'bold', 'important');
            });
        });
    } else {
        console.error('One or more columns not found: ' + targetColumnNames.join(', '));
    }

</script>-->

<!--  <script>
    var targetColumnNamess = ['first_name', 'last_name','course_id']; // Change this to the desired column names
    var highlightColor = 'yellow'; // Change this to the desired highlight color

    // Find the indices of the target columns in the table header
    var columnIndices = targetColumnNamess.map(function (columnName) {
        return Array.from(document.querySelectorAll('table th')).findIndex(th => th.textContent.trim() === columnName);
    });

    // If all target columns are found, apply the script
    if (columnIndices.every(index => index !== -1)) {
        columnIndices.forEach(function (columnIndex) {
            var cellsInColumn = document.querySelectorAll('table tbody td:nth-child(' + (columnIndex + 1) + ')');

            cellsInColumn.forEach(function (cell) {
                cell.style.setProperty('background-color', highlightColor, 'important');
                cell.style.setProperty('font-weight', 'bold', 'important');
            });
        });
    } else {
        console.error('One or more columns not found: ' + targetColumnNamess.join(', '));
    }
</script>-->







 
</body>
