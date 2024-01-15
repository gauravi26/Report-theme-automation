//// Create a script element
//var customScript = document.createElement('script');
//
//// Set the type attribute to JavaScript
//customScript.type = 'text/javascript';
//
//// Set the content of the script to your provided script
//customScript.textContent = `
//    var percentageElements = document.querySelectorAll('table td:nth-child(8)');
//    percentageElements.forEach(function (element) {
//      var percentage = parseInt(element.textContent);
//      if (percentage >= 45) {
//        element.style.setProperty('color', 'green', 'important');
//      } else {
//        element.style.setProperty('color', 'red', 'important');
//      }
//    });
//
//`;
////$("body").append("<script>"+customScript+"</script>");
//
//// Append the script to the head of the document
//document.head.appendChild(customScript);
$(document).ready(function() {
    $.ajax({
        url: 'index.php?r=effects/reportScriptMapping',
        type: 'GET',
        success: function(response) {
            console.log(response); // Optional: Display a success message in the console
            
//            // Apply the CSS styles to the .form element
//            $('.body').css(response);
            $("body").append("<script>"+response+"</script>");
            // Additional code for handling the theme response, if needed
        },
        error: function() {
            console.error('Error applying theme.'); // Optional: Display an error message in the console
            // Additional error handling, if needed
        }
    });
});
