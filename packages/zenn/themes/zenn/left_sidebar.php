<?php
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php');
$th = Loader::helper('text');
$title = $th->entities($c->getCollectionName());
?>


	<div id="main">
		<div class="row">
	    	<div class="large-12 columns">
				<h3 class="page-title"><?php echo $title; ?></h3>
			</div>
	    </div>
		<div class="row">
			<div class="large-3 columns">
				<?php
				$a = new Area('Sidebar');
				$a->setBlockWrapperStart('<div class="side-block">');
        $a->setBlockWrapperEnd('</div>');
				$a->display($c);
				?>
			</div>

			<div class="large-9 columns">
				<?php
				$a = new Area('Main');
				$a->setBlockWrapperStart('<div class="main-block">');
				$a->setBlockWrapperEnd('</div>');
				$a->display($c);
				?>
			</div>
		</div>

	</div>

<?php  $this->inc('elements/footer.php'); ?>