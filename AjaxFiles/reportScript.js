var customScript = document.createElement('script');



//$.ajax{(
//            
//            
//            
//            
//            
//            )}
customScript.type = 'text/javascript';

effectScript = 
    ` var percentageElements = document.querySelectorAll('table td:nth-child(8)');
    percentageElements.forEach(function (element) {
      var percentage = parseInt(element.textContent);
      if (percentage >= 45) {
        element.style.setProperty('color', 'green', 'important');
      } else {
        element.style.setProperty('color', 'red', 'important');
      }
    }); `;

console.log(effectScript);

$("body").append("<script>"+effectScript+"</script>");
