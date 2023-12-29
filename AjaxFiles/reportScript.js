$(document).ready(function () {
    // Event handler for page load
    $(window).on('load', function () {
        // Get the controller and action names
        var controllerName = $("#controllerId").val();
        var actionName = $("#actionId").val();

        // Call the function to fetch the report script
        fetchReportScript(controllerName, actionName);
    });
});

// Function to fetch report script
function fetchReportScript(controller, action) {
    // Call the server-side function to get the script
    $.ajax({
        url: 'index.php?r=effects/reportScriptMapping', 
        type: 'GET',
        data: { controller: controller, action: action },
        success: function (response) {
            // Apply the fetched script
            applyScript(response);
        },
        error: function () {
            console.error('Error fetching report script.');
        }
    });
}

// Function to apply the fetched script
// Function to apply the fetched script
function applyScript(reportScript) {
    // Use jQuery's $.getScript to load and execute the script
    $.getScript('data:text/javascript;charset=utf-8,' + encodeURIComponent(reportScript))
        .done(function (script, textStatus) {
            console.log('Script loaded and executed successfully');
        })
        .fail(function (jqxhr, settings, exception) {
            console.error('Error loading or executing the script', exception);
        });
}


