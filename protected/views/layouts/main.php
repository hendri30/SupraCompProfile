<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/animate.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/owl.transitions.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/prettyPhoto.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/responsive.css">

	<!--[if lt IE 9]>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/html5shiv.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/respond.min.js"></script>
	<![endif]-->
	<link rel="shortcut icon" href="<?php echo Yii::app()->request->baseUrl; ?>/images/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo Yii::app()->request->baseUrl; ?>/images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo Yii::app()->request->baseUrl; ?>/images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="<?php echo Yii::app()->request->baseUrl; ?>/images/ico/apple-touch-icon-57-precomposed.png">

</head>

<body id="home" class="homepage">
	<header id="header">
		<nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<?php echo Yii::app()->createUrl('') ?>"><img src="<?php echo Yii::app()->request->baseUrl; ?>/images/logo.png" alt="logo" height="57px"></a>
				</div>
				<div class="collapse navbar-collapse navbar-right">
					<ul class="nav navbar-nav">
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('') ?>">Home</a></li>
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('about') ?>">About Us</a></li>
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('features') ?>">Features</a></li>
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('services') ?>">Services</a></li>
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('partner') ?>">Partner</a></li>
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('team') ?>">Team</a></li>
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('news') ?>">Blog</a></li> 
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('contacts/create') ?>">Contact</a></li>
						<?php if(!Yii::app()->user->isGuest){ ?>
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('site/admin') ?>">Admin</a></li>
						<li class="scroll"><a href="<?php echo Yii::app()->createUrl('site/logout') ?>">Logout</a></li>
						<?php } ?>
						<li class="scroll" style="margin-left:10px;padding-top:40px;padding-bottom:40px;">
							<?php
							// $lan='en';
							// Yii::app()->translate->setLanguage($lan);
							$translate=Yii::app()->translate;
							echo $translate->dropdown();
							// if(!Yii::app()->user->isGuest){
								// if($translate->hasMessages()){
								// 	echo $translate->translateLink('Translate');
								// 	echo $translate->translateDialogLink('Translate','Translate page title');
								// }
							// 	echo $translate->editLink('<br>Edit translations page<br>');
							// 	echo $translate->missingLink('Missing translations page');
							// }
							?>
						</li>
					</ul>
				</div>
			</div><!--/.container-->
		</nav><!--/nav-->
	</header><!--/header-->

	<!-- CONTENT -->
		<?php echo $content; ?>
	<!-- END CONTENT -->

	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					&copy; <?php echo date('Y'); ?> PT SUPRABAKTI MANDIRI. Designed by <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>
				</div>
				<div class="col-sm-6" style="text-align:end;">
					<a href="<?php echo Yii::app()->createAbsoluteUrl('site/sitemap'); ?>">SITEMAP</a>
				</div>
			</div>
		</div>
	</footer><!--/#footer-->

	<?php /*
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/bootstrap.min.js"></script>
	*/ ?>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/owl.carousel.min.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/mousescroll.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/smoothscroll.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.prettyPhoto.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.isotope.min.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.inview.min.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/wow.min.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/main.js"></script>

</body>
</html>

