<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>

    <!-- Include jQuery 3.6.4 (replace it with the appropriate version if needed) -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!-- DataTables Core -->
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

    <!-- DataTables CSS (for styling) -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
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
                    <td><?php echo $theme['report_id']; ?></td>
                    <td><?php echo $theme['report_element_name']; ?></td>
                    <td><?php echo $theme['report_element']; ?></td>
                    <td><?php echo $theme['theme_name']; ?></td>
                    <td><?php echo $theme['css_property']; ?></td>
                    <td><?php echo $theme['value']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<script>
    $(document).ready(function () {
        $('#tableThemeTable').DataTable({
            // Add any DataTable options here
        });
    });
</script>
