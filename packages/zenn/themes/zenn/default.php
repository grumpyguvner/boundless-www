<?php
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

	<div id="main">
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
	</div>

<?php  $this->inc('elements/footer.php'); ?>