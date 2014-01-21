<?php  defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php');
$th = Loader::helper('text');
$title = $th->entities($c->getCollectionName());
$description = $th->entities($c->getCollectionDescription());

//Other useful page data...
$date = date('F jS, Y', strtotime($c->getCollectionDatePublic()));
$author = $c->getVersionObject()->getVersionAuthorUserName();
$content = $c->getAttribute('content');
?>

	<div id="blog">
		<div class="row">
			<div class="large-3 columns">
				<?php
				$a = new Area('Left Sidebar');
				$a->setBlockWrapperStart('<div class="side-block">');
				$a->setBlockWrapperEnd('</div>');
				$a->display($c);
				?>
			</div>

			<div class="large-9 columns">
				<div class="post">
					<h3 class="post-title"><?php  echo $title ?></h3>
					<div class="post-meta">
						<p>
							<span class="author">Posted by <strong><?php echo $author; ?></strong></span>
							<span class="date">on <strong><?php echo $date; ?></strong></span>
						</p>
					</div>
					<?php
						$a = new Area('Blog Post Header');
						$a->setBlockWrapperStart('<div class="main-block">');
						$a->setBlockWrapperEnd('</div>');
						$a->display($c);
					?>
					<div class="post-content">
						<?php echo $content ? $content : ''; ?>
						<?php
							$a = new Area('Blog Post Main');
							$a->setBlockWrapperStart('<div class="main-block">');
							$a->setBlockWrapperEnd('</div>');
							$a->display($c);
						?>
					</div>
						<?php
							$a = new Area('Blog Post Footer');
							$a->setBlockWrapperStart('<div class="main-block">');
							$a->setBlockWrapperEnd('</div>');
							$a->display($c);
						?>
				</div>
			</div>
			<div class="large-3 columns">
			<?php
			$a = new Area('Right Sidebar');
			$a->setBlockWrapperStart('<div class="side-block">');
			$a->setBlockWrapperEnd('</div>');
			$a->display($c);
			?>
		</div>
		</div>
	</div>

<?php  $this->inc('elements/footer.php'); ?>