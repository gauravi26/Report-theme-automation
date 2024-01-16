jQuery(document).ready(function ($) {
    
    // Flag to check if DataTable is already initialized
    var isDataTableInitialized = false;

    // Function to initialize DataTable
    function initializeDataTable() {
        $('.report-table').DataTable({
            "paging": true,
            "ordering": true,
            "info": true
        });

        // Set the flag to true after initialization
        isDataTableInitialized = true;
    }

    // Function to apply color styles
    function applyColorStyles() {
        $.ajax({
            url: 'index.php?r=effects/reportScriptMapping',
            type: 'GET',
            success: function (response) {
                console.log(response);

                // Check if DataTable is initialized
                if (!isDataTableInitialized) {
                    // Initialize DataTable if not already initialized
                    initializeDataTable();
                }

                // Append the script to the body
                $("body").append("<script>" + response + "</script>");

                // Additional code for handling the theme response, if needed
            },
            error: function () {
                console.error('Error applying theme.');
                // Additional error handling, if needed
            }
        });
    }

    // Event handler for draw.dt
    $('.report-table').on('draw.dt', function () {
        // Call the applyColorStyles function
        applyColorStyles();
    });

    // Initial application of the script
    applyColorStyles();

});
