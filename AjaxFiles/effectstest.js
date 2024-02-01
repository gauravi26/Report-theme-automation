function highlightPassFailByMark(markParameter, passColor, failColor) {
    var targetColumnNames = ['percentage'];

    var columnIndices = targetColumnNames.map(function (columnName) {
        return Array.from(document.querySelectorAll('table th')).findIndex(th => th.textContent.trim() === columnName);
    });

    columnIndices.forEach(function (columnIndex) {
        if (columnIndex !== -1) {
            var targetElements = document.querySelectorAll('table td:nth-child(' + (columnIndex + 1) + ')');
            
            targetElements.forEach(function (element) {
                var value = parseInt(element.textContent);
                if (!isNaN(value)) {
                    if (value >= markParameter) {
                        element.style.setProperty('color', passColor, 'important');
                    } else {
                        element.style.setProperty('color', failColor, 'important');
                    }
                }
            });
        } else {
            console.error('Column not found: ' + targetColumnNames.join(', '));
        }
    });
}

// Call the function with desired parameters
highlightPassFailByMark(30, 'green', 'red');
