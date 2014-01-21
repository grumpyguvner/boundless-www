<?php
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php');
$th = Loader::helper('text');
$title = $th->entities($c->getCollectionName());
$description = $th->entities($c->getCollectionDescription());
?>

	<div id="porfolio">
	    <div class="row">
	    	<div class="large-12 columns">
					<?php
						$a = new Area('Main');
						$a->setBlockWrapperStart('<div class="main-block">');
						$a->setBlockWrapperEnd('</div>');
						$a->display($c);
					?>
				</div>
	    </div>
	    <div class="project-info row">
	    	<div class="large-3 columns">
	    		<h4 class="project-title"><?php echo $title ?></h4>
	    		<?php
						$a = new Area('Project Meta');
						$a->setBlockWrapperStart('<div class="main-block">');
						$a->setBlockWrapperEnd('</div>');
						$a->display($c);
					?>
				</div>
				<div class="large-9 columns">
	    		<p class="project-description"><?php echo $description ?></p>
	    		<?php
						$a = new Area('Project Description');
						$a->setBlockWrapperStart('<div class="main-block">');
						$a->setBlockWrapperEnd('</div>');
						$a->display($c);
					?>
				</div>
	    </div>
	    <div class="row">
	    	<div class="large-12 columns">
	    		<?php
						$a = new Area('Project Footer');
						$a->setBlockWrapperStart('<div class="main-block">');
						$a->setBlockWrapperEnd('</div>');
						$a->display($c);
					?>
	    	</div>
	    </div>
	</div>

<?php  $this->inc('elements/footer.php'); ?>