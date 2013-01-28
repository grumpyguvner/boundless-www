<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php Loader::element('header_required'); ?>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="<?=$this->getThemePath()?>/main.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
<!-- start header -->
<div id="header">
	<?php
              $a = new Area('header');
              $a->display($c);
        ?>
</div>
<!-- end header -->
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		
                    <?php
                    $a = new Area('content');
                    $a->display($c);
                    ?>
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<?php
                    $a = new Area('sidebar');
                    $a->display($c);
                ?>
	</div>
	<!-- end sidebar -->
</div>
</div>
<!-- end page -->
<div id="footer">
	<?php
            $a = new Area('footer');
            $a->display($c);
        ?>
</div>
<?php  Loader::element('footer_required'); ?>
</body>
</html>