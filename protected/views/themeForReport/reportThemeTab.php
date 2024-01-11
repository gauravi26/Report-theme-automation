    <!-- reportThemeTab.php -->
    <style>/* Custom Styles */

      .span-19  h1{
            
            text-align: center;
        }
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
      width: 648px
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
    
    #page{
        width: 1500px;
    }
    
  #preview{
/*             background-color: #ffffff;*/
/*    height: 700px;*/
/*width: 800px;*/
    float: right;
    border: 1px solid #000;
    padding: 10px;
    padding-top: 10px;
    display: box-model;

          
      }
      
       th { background-color: #102b47 ; }
      
    </style>
  
    <?php
    /* @var $themeReportModel ThemeForReport */
    $this->pageTitle = 'Report Theme: ' . CHtml::encode($themeReportModel->theme_name);
    ?>
    <h1> Create Theme For Report</h1>

    <h3>Theme Name : <?php echo CHtml::encode($themeReportModel->theme_name); ?></h3>
    
<form id="reportThemeForm" method="post" action="<?php echo Yii::app()->createUrl('themeForReport/saveThemeValues'); ?>">
    <input type="hidden" name="themeReportId" value="<?php echo $themeReportModel->reference_id; ?>">


    <div class="tab">
      <button class="tablinks" onclick="openCss(event, 'GridContainer')">GridContainer</button>
      <button class="tablinks" onclick="openCss(event, 'Heading')">Heading</button>
      <button class="tablinks" onclick="openCss(event, 'Table')">Table</button>
      <button class="tablinks" onclick="openCss(event, 'TableHeader')">TableHeader</button>
      <button class="tablinks" onclick="openCss(event, 'TableRows')">TableRows</button>
      <button class="tablinks" onclick="openCss(event, 'TableCells')">TableCells</button>
      <button class="tablinks" onclick="openCss(event, 'TableFooter')">TableFooter</button>
      <button class="tablinks" onclick="openCss(event, 'DataTable')">DataTable</button>

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
    117 =>'DataTable',
    118 =>'DataTable',
    119 =>'DataTable',
    120 =>'DataTable',
    
    // Add more mappings as needed
];

$requiredName = ['60_1','115_2','115_3','61_1','61_41','61_39','53_3','53_18','57_1','116_3','58_1','58_3'];
?>
 <!-- Create an associative array to group input fields based on tab IDs -->
<?php
$inputFieldsByTab = [];

foreach ($associatedSets as $set) {
    $elementTable = Elements::model()->findByPk(['id' => $set->element_id]);
    $element = $elementTable->element;

    $cssPropertyTable = CssProperties::model()->findByPk(['id' => $set->css_property_id]);
    $cssProperty = $cssPropertyTable->property_name;

    $fieldName = $set->element_id . '_' . $set->css_property_id;
    $labelName =  $cssProperty;
    $inputName = $fieldName; 
$inputId = $element . '_' . $cssProperty;
    // Check if the element has a corresponding tab ID
    $tabId = isset($elementTabMapping[$set->element_id]) ? $elementTabMapping[$set->element_id] : 'default';

    // Group input fields by tab ID
    $inputFieldsByTab[$tabId][] = [
        'label' => $labelName,
        'inputName' => $inputName,
        'value' => $set->value,
        'id' => $inputId,
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
                    id="<?php echo $inputField['id']; ?>"
                       <?php if (in_array($inputField['inputName'], $requiredName) && empty($inputField['value'])): ?>
                           required
                       <?php endif; ?>
                >
                <span class='star'>
                    <?php echo (in_array($inputField['inputName'], $requiredName) && empty($inputField['value'])) ? '*' : ''; ?>
                </span>
                       </div>
        <?php endforeach; ?>
    </div>
<?php endforeach; ?>
    
<br><input type="submit" value="Save" name ="saveTheme">
</form>
<?php
include 'preview.php'; // or require 'themePreview.php';
?>
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
<script>
document.addEventListener("DOMContentLoaded", function () {
    const reportThemeForm = document.getElementById('reportThemeForm');
    const reportGridContainer = document.getElementById('report-container');
        const reportTable = document.getElementById('report-table');

    

    function updateGridContainerProperties() {
        reportGridContainer.style.backgroundColor = reportThemeForm['.report-container_background-color'].value;
        reportGridContainer.style.grid = reportThemeForm['.report-container_grid'].value;
        reportGridContainer.style.gridTemplateColumns = reportThemeForm['.report-container_grid-template-columns'].value;
        reportGridContainer.style.gridGap = reportThemeForm['.report-container_grid-gap'].value;
        reportGridContainer.style.justifyContent = reportThemeForm['.report-container_justify-content'].value;
        reportGridContainer.style.alignItems = reportThemeForm['.report-container_align-items'].value;
        reportGridContainer.style.boderRadius = reportThemeForm['.report-container_border-radius'].value;
        reportGridContainer.style.padding = reportThemeForm['.report-container_padding'].value;
        reportGridContainer.style.fontFamily = reportThemeForm['.report-container_font-family'].value;
        reportGridContainer.style.width = reportThemeForm['.report-container_width'].value;
        reportGridContainer.style.margin = reportThemeForm['.report-container_margin'].value;
       
    }
    
    
    function updateTableProperties()  {
        
        reportTable.style.width = reportThemeForm['.report-table _width'].value;
         reportTable.style.borderCollapse = reportThemeForm['.report-table _border-collapse'].value;
    reportTable.style.borderSpacing = reportThemeForm['.report-table _border-spacing'].value;
    reportTable.style.marginTop = reportThemeForm['.report-table _margin-top'].value;
    reportTable.style.backgroundColor = reportThemeForm['.report-table _background-color'].value;

    }

    // Adding Listener Grid Container 
    reportThemeForm['.report-container_grid'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_grid-template-columns'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_grid-gap'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_justify-content'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_align-items'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_background-color'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_border-radius'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_padding'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_font-family'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_width'].addEventListener("input", updateGridContainerProperties);
    reportThemeForm['.report-container_margin'].addEventListener("input", updateGridContainerProperties);
  
  
     // Adding Listener Table 
     
   reportThemeForm['.report-table _width'].addEventListener("input", updateTableProperties); 
   reportThemeForm['.report-table _border-collapse'].addEventListener("input", updateTableProperties);
   reportThemeForm['.report-table _border-spacing'].addEventListener("input", updateTableProperties);
   reportThemeForm['.report-table _margin-top'].addEventListener("input", updateTableProperties);
   reportThemeForm['.report-table _background-color'].addEventListener("input", updateTableProperties);

   
   
   
   
   
    // Initial background color update
    updateGridContainerProperties();
    updateTableProperties();
    
});
</script>




