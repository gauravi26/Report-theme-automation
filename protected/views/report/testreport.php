
<?php  
$controller = Yii::app()->getController();
//  print_r($controller);
// die();
    $actionId = $controller->getAction()->getId();
    $controllerId = $controller->getId();


echo CHtml::hiddenField('controllerId', $controllerId);
echo CHtml::hiddenField('actionId', $actionId);
 ?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>

    <!-- Include jQuery 3.6.4 (replace it with the appropriate version if needed) -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!-- DataTables Core -->
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

    <!-- DataTables CSS (for styling) -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
</head>
<body>
  <div id="scriptPlaceholder"></div>
</body>

  <div class="report-container">
    <h2>HTML TABLE</h2>
    <table class="report-table">
      <thead>
        <tr>
          <th>Roll No.</th>
          <th>Name</th>
          <th>English</th>
          <th>Maths</th>
          <th>Science</th>
          <th>Computer Science</th>
          <th>Social Studies</th>
          <th>Percent %</th> <!-- Added Total column -->
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>01</td>
          <td>Adiya</td>
          <td>86</td>
          <td>90</td>
          <td>56</td>
          <td>23</td>
          <td>56</td>
          <td>30</td> <!-- Placeholder for Total column -->
        </tr>
        <tr>
          <td>02</td>
          <td>Riya</td>
          <td>54</td>
          <td>77</td>
          <td>77</td>
          <td>92</td>
          <td>05</td>
          <td>45</td> <!-- Placeholder for Total column -->
        </tr>
        <tr>
          <td>03</td>
          <td>Priya</td>
          <td>68</td>
          <td>48</td>
          <td>8</td>
          <td>92</td>
          <td>90</td>
          <td>89</td> <!-- Placeholder for Total column -->
        </tr>
        <tr>
          <td>04</td>
          <td>Gauravi</td>
          <td>48</td>
          <td>56</td>
          <td>87</td>
          <td>34</td>
          <td>55</td>
          <td>37</td> <!-- Placeholder for Total column -->
        </tr>
        <tr>
          <td>05</td>
          <td>Nikhil</td>
          <td>86</td>
          <td>37</td>
          <td>87</td>
          <td>67</td>
          <td>45</td>
          <td>95</td> <!-- Placeholder for Total column -->
        </tr>
      </tbody>
    
    </table>
  </div>

 <!-- DataTable initialization script -->
   <!-- DataTable initialization script -->
<script>
        jQuery(document).ready(function ($) {
            // Event handler for page load
            $(window).on('load', function () {
                // Get the controller and action names
                var controllerName = $("#controllerId").val();
                var actionName = $("#actionId").val();

                // Call the function to fetch CSS properties
                fetchCssProperties(controllerName, actionName);

                // Initialize DataTable after fetching CSS properties
                initializeDataTable();
            });
        });

        // Function to fetch CSS properties
        function fetchCssProperties(controller, action) {
            // Make the AJAX request to fetch CSS properties
            $.ajax({
                url: 'index.php?r=reportThemeMapping/applyThemeReport',
                type: 'GET',
                dataType: 'text', // Change the data type to 'text'
                data: { controller: controller, action: action },
                success: function (data) {
                    // Combine CSS rules into a single string
                    var combinedCssRule = data;

                    // Create a style element and append it to the head
                    var styleElement = $('<style>').text(combinedCssRule);
                    $('head').append(styleElement);

                    // Initialize DataTable after fetching CSS properties
                    initializeDataTable();
                },
                error: function (xhr, status, error) {
                    // Handle the error, if any
                    console.error("Error fetching CSS properties:", status, error);
                }
            });
        }

        // Function to initialize DataTable
        function initializeDataTable() {
            $('.report-table').DataTable({
                // Add any DataTable options here
            });
        }
    </script>

</body>




