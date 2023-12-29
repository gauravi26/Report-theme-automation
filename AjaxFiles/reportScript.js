$(document).ready(function () {
    // Event handler for page load
    $(window).on('load', function () {
        // Get the controller and action names
        var controllerName = $("#controllerId").val();
        var actionName = $("#actionId").val();

        // Call the function to fetch the report script
        var reportScript = fetchReportScript(controllerName, actionName);

        // Create a script element
        var customScript = document.createElement('script');

        // Set the type attribute to JavaScript
        customScript.type = 'text/javascript';

        // Set the content of the script to the fetched report script
        customScript.textContent = reportScript;

        // Append the script to the head of the document
        document.head.appendChild(customScript);
    });
});

// Function to fetch report script
function fetchReportScript(controller, action) {
    // Call the server-side function to get the script
    var script = ''; // You need to make an Ajax request to your server to get the script
    $.ajax({
        url: 'index.php?r=effects/reportScriptMapping', // Replace with your server-side endpoint
        type: 'GET',
        data: { controller: controller, action: action },
        async: false, // Synchronous request to ensure the script is fetched before continuing
        success: function (response) {
            script = response;
            console.log( script);

            // Apply the fetched script similar to the first script
            document.addEventListener('DOMContentLoaded', function () {
                // Your fetched script logic here
                var customScript = document.createElement('script');
                customScript.type = 'text/javascript';
                customScript.textContent = script;
                console.log(customScript);
                document.head.appendChild(customScript);
            });
        },
        error: function () {
            console.error('Error fetching report script.');
        }
    });

    return script;
}
