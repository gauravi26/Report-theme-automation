<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <!-- DataTables Responsive JS -->
        <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>


    <!-- DataTables CSS (for styling) -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

<!--            <script src="<?php echo Yii::app()->baseUrl; ?>/AjaxFiles/customProperties.js"></script>
            <script src="<?php echo Yii::app()->baseUrl; ?>/AjaxFiles/texttypeproperties.js"></script>
            <script src="<?php echo Yii::app()->baseUrl; ?>/AjaxFiles/applytheme.js"></script>-->
<!--            <script src="<?php echo Yii::app()->baseUrl; ?>/AjaxFiles/effectScripts.js"></script>-->
<!--            <script src="<?php echo Yii::app()->baseUrl; ?>/AjaxFiles/reportTheme.js"></script>-->
            <script src="<?php echo Yii::app()->baseUrl; ?>/AjaxFiles/themeingReport.js"></script>
                    <script src="<?php echo Yii::app()->baseUrl; ?>/AjaxFiles/datatable.js"></script>


            <script src="<?php echo Yii::app()->baseUrl; ?>/AjaxFiles/reportScript.js"></script>
            <title><?php echo CHtml::encode($this->pageTitle); ?></title>

            <?php  
    $controller = Yii::app()->getController();
    $actionId = $controller->getAction()->getId();
    $controllerId = $controller->getId();
    ?>



</head>

<body>
<?php  
$controller = Yii::app()->getController();
$actionId = $controller->getAction()->getId();
$controllerId = $controller->getId();
?>

<script>
    var controllerIdInput = document.createElement("input");
    controllerIdInput.type = "hidden";
    controllerIdInput.name = "controllerId";
    controllerIdInput.value = "<?php echo $controllerId; ?>";
    document.body.appendChild(controllerIdInput);

    var actionIdInput = document.createElement("input");
    actionIdInput.type = "hidden";
    actionIdInput.name = "actionId";
    actionIdInput.value = "<?php echo $actionId; ?>";
    document.body.appendChild(actionIdInput);
</script>
<div class="container" id="page">

	<div id="header">
		<div id="logo"><?php echo CHtml::encode(Yii::app()->name); ?></div>
	</div><!-- header -->

	<div id="mainmenu">
		<?php $this->widget('zii.widgets.CMenu',array(
			'items'=>array(
//				array('label'=>'Home', 'url'=>array('/site/index')),
//				array('label'=>'About', 'url'=>array('/site/page', 'view'=>'about')),
//				array('label'=>'Contact', 'url'=>array('/site/contact')),
//				array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
//				array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
                                array('label'=>'Report', 'url'=>array('/report/index')),
                                array('label'=>'Create Theme for Report', 'url'=>array('/themeForReport/reportTheme')),
                                array('label'=>'Apply Theme to Report', 'url'=>array('/reportThemeMapping/index')),
                                array('label'=>'Report Scripts', 'url'=>array('/reportTriggerMapping/create')),
                                array('label'=>'Testing', 'url'=>array('/report/testReport')),
                                array('label'=>'Student Report', 'url'=>array('/studentinformation/reportTest')),
                                array('label'=>'Course Report', 'url'=>array('/courses/reportTest')),


                            
			),
		)); ?>
	</div><!-- mainmenu -->
	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<?php echo $content; ?>

	<div class="clear"></div>

	<div id="footer">
		Copyright &copy; <?php echo date('Y'); ?> by My Company.<br/>
		All Rights Reserved.<br/>
		<?php echo Yii::powered(); ?>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
