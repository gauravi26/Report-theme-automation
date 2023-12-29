// Create a script element
var customScript = document.createElement('script');

// Set the type attribute to JavaScript
customScript.type = 'text/javascript';

// Set the content of the script to your provided script
customScript.textContent = `
    document.addEventListener('DOMContentLoaded', function () {
        // Adding style rules dynamically for both 7th and 8th columns
        var style = document.createElement('style');
        style.textContent = 'table td:nth-child(8).red { color: red !important; } ' +
                            ' table td:nth-child(8).green { color: green !important; }';

        document.head.appendChild(style);

        // Now you can use your existing jQuery code for both columns
        $('table td:nth-child(7), table td:nth-child(8)').each(function() {
            var percentage = parseInt($(this).text());
            $(this).removeClass('red green');

            if (percentage < 45) {
                $(this).addClass('red');
            } else {
                $(this).addClass('green');
            }
        });
    });
`;

// Append the script to the head of the document
document.head.appendChild(customScript);
