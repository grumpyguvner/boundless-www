<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="<?php echo LANGUAGE?>"> <!--<![endif]-->
<head>
<?php  Loader::element('header_required'); ?>

<!-- Site Header Content //-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet' type='text/css'/>
<link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getThemePath(); ?>/assets/css/normalize.css"/>
<link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getThemePath(); ?>/assets/css/foundation.css"/>
<link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getThemePath(); ?>/assets/css/style.css"/>



<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="<?php  echo $this->getThemePath(); ?>/assets/js/vendor/custom.modernizr.js"></script>

<?php  if ($c->isEditMode()): ?>
	<!-- edit mode bugfix -->
	<style type="text/css">
		body {padding-top: 100px;}
		#ccm-highlighter, .ccm-menu.ccm-ui {margin-top:-49px;}
		.ccm-add-block {min-height: 45px;}
	</style>
<?php endif; ?>

</head>
<body>

	<header id="header" class="<?php echo $c->isEditMode() ? '': 'fixed'; ?>">
		<div class="row">
		<div class="large-12 columns">
			<nav class="top-bar">
				<ul class="title-area">
				  <li class="name">
				  	<?php
					$a = new GlobalArea('Logo');
					$a->setBlockLimit(1);
					$a->display($c);
					?>
				  </li>
				  <li class="toggle-topbar menu-icon"><a href=""><span></span></a></li>
				</ul>
				<section class="top-bar-section <?php  echo $c->isEditMode() ? 'large-12 columns' : ''; ?>">
				<?php
					$a = new GlobalArea('Menu');
					$a->display($c);
				?>
				</section>
			</nav>
		</div>	
		</div>	
	</header>