<!-- reportThemeTab.php -->
<style>/* Custom Styles */
    .nav-pills .nav-link {
      color: #ffffff;
      background-color: #007bff;
      border-radius: 0;
      padding: 10px 20px;
      margin-right: 10px;
      font-weight: bold;
      transition: background-color 0.3s ease;
      position: relative;
      overflow: hidden;
    }

    .nav-pills .nav-link:before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: #ffffff;
      opacity: 0;
      transform: translateY(100%);
      transition: opacity 0.3s ease, transform 0.3s ease;
      z-index: -1;
    }

    .nav-pills .nav-link:hover:before,
    .nav-pills .nav-link:focus:before {
      opacity: 0.1;
      transform: translateY(0);
    }

    .nav-pills .nav-link.active:before {
      opacity: 0.1;
      transform: translateY(0);
      z-index: -1;
    }

    .nav-pills .nav-link span {
      position: relative;
      z-index: 1;
    }

    .tab-content {
      padding: 20px;
      background-color: #f8f9fa;
      border-radius: 0 4px 4px 4px;
      border-top: 2px solid #0056b3;
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
     .nested-tabcontainer {
    display: none;
  }

   .nested-tab {
    text-align: left;
  }

  .nested-tab button {
    margin-right: 5px;
  }

  /* Styles for the nested tab content */
  .nested-tabcontent {
    display: none;
    padding: 20px;
    border: 1px solid #ccc;
    margin-top: 10px;
  }

  /* Additional styles for specific elements within the nested tab content */
  .nested-tabcontent h4 {
    margin-top: 0;
  }

  .nested-tabcontent label {
    display: inline-block;
    width: 150px;
    text-align: right;
    margin-right: 10px;
  }

  .nested-tabcontent input,
  .nested-tabcontent select {
    padding: 5px;
    border: 1px solid #ccc;
    margin-bottom: 10px;
  }
</style>

<?php
/* @var $themeReportModel ThemeForReport */
$this->pageTitle = 'Report Theme: ' . CHtml::encode($themeReportModel->theme_name);
?>
<h1>Theme For Report</h1>

<h2><?php echo CHtml::encode($themeReportModel->theme_name); ?></h2>

<div class="tab">
  <button class="tablinks" onclick="openCss(event, 'Grid Container')">Grid Container</button>
  <button class="tablinks" onclick="openCss(event, 'Heading')">Heading</button>
  <button class="tablinks" onclick="openCss(event, 'Table')">Table</button>
  <button class="tablinks" onclick="openCss(event, 'Table Header')">Table Header</button>
  <button class="tablinks" onclick="openCss(event, 'Table Rows')">Table Rows</button>
  <button class="tablinks" onclick="openCss(event, 'Table Cells')">Table Cells</button>
  <button class="tablinks" onclick="openCss(event, 'Table Footer')">Table Footer</button>
</div>

<div id="Grid Container" class="tabcontent">
  <h3>Grid Container</h3>
  <!-- Content for the "Grid Container" tab goes here -->
  
  
</div>
  <div id="Heading" class="tabcontent">
  <h3>Heading</h3>
  <!-- Content for the "Table" tab goes here -->
  </div>
  <div id="Table" class="tabcontent">
  <h3>Table</h3>
  <!-- Content for the "Table" tab goes here -->
  </div>
  <div id="Table Header" class="tabcontent">
  <h3>Table Header</h3>
  <!-- Content for the "Table Header" tab goes here -->
</div>

<div id="Table Rows" class="tabcontent">
  <h3>Table Rows</h3>
  <!-- Content for the "Table Rows" tab goes here -->
</div>

<div id="Table Cells" class="tabcontent">
  <h3>Table Cells</h3>
  <!-- Content for the "Table Cells" tab goes here -->
</div>

<div id="Table Footer" class="tabcontent">
  <h3>Table Footer</h3>
  <!-- Content for the "Table Footer" tab goes here -->
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="http://localhost/testproject/AjaxFiles/tab-view-updatetheme_element_value.js"></script>
