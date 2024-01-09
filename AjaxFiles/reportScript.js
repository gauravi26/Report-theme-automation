var controllerName = $("#controllerId").val();
var actionName = $("#actionId").val();

// Call the function to fetch the report script
fetchReportScript(controllerName, actionName);

function fetchReportScript(controller, action) {
    $.ajax({
        url: 'index.php?r=effects/reportScriptMapping',
        type: 'GET',
        data: { controller: controller, action: action },
        success: function (response) {
            // Apply the fetched script
//            applyScript(response);

                $("#scriptPlaceholder").append("<script>"+response+"</script>");
        },
        error: function () {
            console.error('Error fetching report script.');
        }
    });
}

function applyScript(script) {
    // Create a script element
    var customScript = document.createElement('script');

    // Set the type attribute to JavaScript
    customScript.type = 'text/javascript';
    customScript.setAttribute('defer', 'defer');

    // Set the content of the script
    customScript.textContent = script;
    
    // Append the script to the head of the document
    document.head.appendChild(customScript);
    console.log(customScript);
    // Add an event listener for the 'load' event to ensure the script has loaded
    customScript.addEventListener('load', function () {
        // Script has loaded, and you can perform actions after it has loaded.
        console.log('Script has loaded');
    });
}
