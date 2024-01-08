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
        <div>
            <?php
            $elementTable = Elements::model()->findByPk(['id' => $set->element_id]);
            $element = $elementTable->element;

            $cssPropertyTable = CssProperties::model()->findByPk(['id' => $set->css_property_id]);
            $cssProperty = $cssPropertyTable->property_name;

            $fieldName = $set->element_id . '_' . $set->css_property_id;
            $labelName = $element . '_' . $cssProperty;
            $inputName = $fieldName; // Without the "report-" prefix
            ?>
            <label for="<?php echo $inputName ; ?>">
                <?php echo $labelName; ?>
            </label>
            <input type="text" name="<?php echo $inputName; ?>" value="<?php echo $set->value; ?>" class="container-property-input">
        </div>
    <?php endforeach; ?>
</div>


    <div id="GridContainer" class="tabcontent">
      <h3>Grid Container</h3>

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
<br><input type="submit" value="Save" name ="saveTheme">
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