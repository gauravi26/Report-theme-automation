    <!-- reportThemeTab.php -->
    <style>/* Custom Styles */


        h3 {
          color: #0056b3;
          font-size: 24px;
          margin-bottom: 10px;
        }

        h4{
            font-color: blue;
            font-size: 20px

        }
        p {
          color: #333333;
          font-size: 16px;
        }

         #Size .label {
            display: inline-block;
            width: 100px;
            text-align: right;
            margin-bottom: 10px;
        }

         #Size input[type="text"] {
            padding: 5px;
            border: 1px solid #ccc;
            margin-bottom: 10px;
        }


        .tabcontent {
      padding: 20px;
      border: 1px solid #ccc;
      margin-top: 10px;
      box-sizing: border-box;
    }
    .tab {
        margin-bottom: 20px;
      }
      label {
        display: inline-block;
        max-width: 100%;
        margin-bottom: 5px;
        font-weight: 700;    
        padding: 8px; /* Add padding to the right of the label */

    }

    .tabcontent label {
        display: inline-block;
        width: 150px;
        text-align: right;
        margin-right: 10px;
    }

    </style>

    <?php
    /* @var $themeReportModel ThemeForReport */
    $this->pageTitle = 'Report Theme: ' . CHtml::encode($themeReportModel->theme_name);
    ?>
    <h1>Theme For Report</h1>

    <h2><?php echo CHtml::encode($themeReportModel->theme_name); ?></h2>
    
<form method="post" action="<?php echo Yii::app()->createUrl('themeForReport/saveThemeValues'); ?>">
    <input type="hidden" name="themeReportId" value="<?php echo $themeReportModel->reference_id; ?>">


    <div class="tab">
      <button class="tablinks" onclick="openCss(event, 'GridContainer')">GridContainer</button>
      <button class="tablinks" onclick="openCss(event, 'Heading')">Heading</button>
      <button class="tablinks" onclick="openCss(event, 'Table')">Table</button>
      <button class="tablinks" onclick="openCss(event, 'TableHeader')">TableHeader</button>
      <button class="tablinks" onclick="openCss(event, 'TableRows')">TableRows</button>
      <button class="tablinks" onclick="openCss(event, 'TableCells')">TableCells</button>
      <button class="tablinks" onclick="openCss(event, 'TableFooter')">TableFooter</button>
    </div>
    
   <div class="tab">
        <?php foreach ($associatedSets as $set): ?>
            <button class="tablinks" onclick="openCss(event, '<?php echo $set->element_id . '_' . $set->css_property_id; ?>')">
                <?php echo $set->theme_name; ?>
            </button>
        <?php endforeach; ?>
    </div>

    <!-- Dynamic tabs content -->
    <?php foreach ($associatedSets as $set): ?>
        <div id="<?php echo $set->element_id . '_' . $set->css_property_id; ?>" class="tabcontent">
            <h3><?php echo $set->theme_name; ?> - <?php echo $set->element_id . '_' . $set->css_property_id; ?></h3>
            <!-- Dynamic generation of input fields based on element_id and css_property_id -->
            <label for="<?php echo $set->element_id . '_' . $set->css_property_id; ?>_value">Value:</label>
            <input type="text" name="<?php echo $set->element_id . '_' . $set->css_property_id; ?>_value"
                value="<?php echo $set->value; ?>" class="container-property-input">
            <!-- Add more input fields as needed -->
        </div>
    <?php endforeach; ?>

    <div id="GridContainer" class="tabcontent">
      <h3>Grid Container</h3>

      <!-- Content for the "GridContainer" tab goes here -->
      <label for="gridPropertyValue">Grid Property :</label>
      <select name="container_grid" class="container-property-input">
      <option value=" ">Select</option>
      <option value="display">Display</option>
      <option value="default">Default Style</option>
      <option value="centered">Centered Style</option>
      <option value="wide">Wide Style</option>
      <option value="custom">Custom Style</option>
      <!-- Add more options as needed -->
    </select><br>

    <label>Grid Columns:</label>
    <input type="number" name="container_gridColumns" min="1" class="container-property-input"><br>

    <label>Grid Gap:</label>
    <input type="number" name="container_gridGap" min="0" class="container-property-input"><br>

    <label>Justify Content:</label>
    <select name="container_justifyContent" class="container-property-input">
         <option value=" ">Select</option>
        <option value="center">Center</option>
        <option value="flex-start">Flex Start</option>
        <option value="center">Center</option>
        <option value="flex-end">Flex End</option>
      <!-- Add more options as needed -->
    </select><br>

    <label>Align Items:</label>
    <select name="container_alignItems" class="container-property-input">
                <option value=" ">Select</option>

       <option value="center">Center</option>
       <option value="flex-start">Flex Start</option>
       <option value="flex-end">Flex End</option>
      <!-- Add more options as needed -->
    </select><br>

    <label>Background Color:</label>
    <input type="color" name="container_backgroundColor" value="#FFFFFF" class="container-property-input"><br>

    <label>Border Radius:</label>
    <input type="number" name="container_borderRadius" min="0" class="container-property-input"><br>

    <label>Padding:</label>
    <input type="number" name="container_padding" min="0" class="container-property-input"><br>

    <label for="container_fontFamily">Font Family:</label>
    <select id="container_fontFamily" name="container_fontFamily" class="container-property-input">
        <option value=" ">Select</option>
        <option value="'Arial', sans-serif">Arial, sans-serif</option>
        <option value="'Verdana', sans-serif">Verdana, sans-serif</option>
        <option value="'Helvetica', sans-serif">Helvetica, sans-serif</option>
        <option value="'Georgia', serif">Georgia, serif</option>
        <option value="'Times New Roman', serif">Times New Roman, serif</option>
        <option value="'Courier New', monospace">Courier New, monospace</option>
        <option value="'Trebuchet MS', sans-serif">Trebuchet MS, sans-serif</option>
        <option value="'Roboto', sans-serif">Roboto, sans-serif</option>
        <option value="'Open Sans', sans-serif">Open Sans, sans-serif</option>
        <option value="'Lato', sans-serif">Lato, sans-serif</option>
        <option value="'Montserrat', sans-serif">Montserrat, sans-serif</option>
        <!-- Add more font family options as needed -->
    </select><br>

    <label>Width:</label>
    <input type="number" name="container_width" min="0" class="container-property-input"><br>

    <label>Margin:</label>
    <input type="text" name="container_margin" class="container-property-input"><br>


    </div>
      <div id="Heading" class="tabcontent">
      <h3>Heading</h3>
      <!-- Content for the "Table" tab goes here -->
      </div>
      <div id="Table" class="tabcontent">
      <h3>Table</h3>
      <!-- Content for the "Table" tab goes here -->
      </div>
      <div id="TableHeader" class="tabcontent">
      <h3>Table Header</h3>
      <!-- Content for the "TableHeader" tab goes here -->
    </div>

    <div id="TableRows" class="tabcontent">
      <h3>Table Rows</h3>
      <!-- Content for the "TableRows" tab goes here -->
    </div>

    <div id="TableCells" class="tabcontent">
      <h3>Table Cells</h3>
      <!-- Content for the "TableCells" tab goes here -->
    </div>

    <div id="TableFooter" class="tabcontent">
      <h3>Table Footer</h3>
      <!-- Content for the "TableFooter" tab goes here -->
    </div>
<br><input type="submit" value="Save">
</form>

   <script>
function openCss(event, tabName) {
  // Hide all tabcontent elements
  var tabcontent = document.getElementsByClassName("tabcontent");
  for (var i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Remove 'active' class from all tablinks
  var tablinks = document.getElementsByClassName("tablinks");
  for (var i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the selected tab content and add 'active' class to the clicked tablink
  document.getElementById(tabName).style.display = "block";
  event.currentTarget.className += " active";

  // Prevent the default action
  if (event.preventDefault) {
    event.preventDefault();
  } else {
    event.returnValue = false; // For older IE versions
  }

  return false;
}

// Set "Container" tab as active by default on page load
document.addEventListener("DOMContentLoaded", function () {
  var defaultTabButton = document.querySelector(".tablinks");
  defaultTabButton.click();
});

</script>