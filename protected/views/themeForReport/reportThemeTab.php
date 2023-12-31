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
 
    .star{
        
        color: red;
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
    <?php
$elementTabMapping = [
    60 => 'GridContainer',
    115 => 'Heading',
    61 => 'Table',
    53 => 'TableHeader',
    55  => 'TableRows',
    56 => 'TableRows',
    57=> 'TableRows',
    116 => 'TableCells',
    58 => 'TableFooter',
    
    // Add more mappings as needed
];

$requiredName = ['60_1','115_2','115_3','61_1','61_41','61_39','53_3','53_18','57_1','116_3','58_1','58_3'];
?>
 <!-- Create an associative array to group input fields based on tab IDs -->
<?php
$inputFieldsByTab = [];

foreach ($associatedSets as $set) {
    $elementTable = Elements::model()->findByPk(['id' => $set->element_id]);
    $element = $elementTable->element_name;

    $cssPropertyTable = CssProperties::model()->findByPk(['id' => $set->css_property_id]);
    $cssProperty = $cssPropertyTable->property_name;

    $fieldName = $set->element_id . '_' . $set->css_property_id;
    $labelName =  $cssProperty;
    $inputName = $fieldName; 

    // Check if the element has a corresponding tab ID
    $tabId = isset($elementTabMapping[$set->element_id]) ? $elementTabMapping[$set->element_id] : 'default';

    // Group input fields by tab ID
    $inputFieldsByTab[$tabId][] = [
        'label' => $labelName,
        'inputName' => $inputName,
        'value' => $set->value,
    ];
}
?>

<!-- Render tabs and associated input fields -->
<?php foreach ($inputFieldsByTab as $tabId => $inputFields): ?>
    <div id="<?php echo $tabId; ?>" class="tabcontent">
        <h3><?php echo ucfirst($tabId); ?></h3>
        <!-- Content for the tab goes here -->
        <?php foreach ($inputFields as $inputField): ?>
            <div>
                <label for="<?php echo $inputField['inputName']; ?>">
                    <?php echo ucfirst($inputField['label']); ?>

                </label>
 
                    <!-- Keep the existing text input for other fields -->
                    <input type="text" 
                    name="<?php echo $inputField['inputName']; ?>" 
                    value="<?php echo $inputField['value']; ?>" 
                    class="container-property-input "
                    <?php echo (in_array($inputField['inputName'], $requiredName) && empty($inputField['value'])) ? 'required' : ''; ?>
    >
                    <span class='star'>  <?php echo (in_array($inputField['inputName'], $requiredName) && empty($inputField['value'])) ? '*' : ''; ?></span>

                       </div>
        <?php endforeach; ?>
    </div>
<?php endforeach; ?>
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