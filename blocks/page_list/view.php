<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$rssUrl = $showRss ? $controller->getRssUrl($b) : '';
$th = Loader::helper('text');
//$ih = Loader::helper('image'); //<--uncomment this line if displaying image attributes (see below)
//Note that $nh (navigation helper) is already loaded for us by the controller (for legacy reasons)
?>

<div class="post-list">

	<?php  foreach ($pages as $page):

		// Prepare data for each page being listed...
		$title = $th->entities($page->getCollectionName());
		$url = $nh->getLinkToCollection($page);
		$target = ($page->getCollectionPointerExternalLink() != '' && $page->openCollectionPointerExternalLinkInNewWindow()) ? '_blank' : $page->getAttribute('nav_target');
		$target = empty($target) ? '_self' : $target;
		$description = $page->getCollectionDescription();
		$description = $controller->truncateSummaries ? $th->shorten($description, $controller->truncateChars) : $description;
		$description = $th->entities($description);	
		
		//Other useful page data...
		$date = date('F jS, Y', strtotime($page->getCollectionDatePublic()));
		$author = $page->getVersionObject()->getVersionAuthorUserName();
		$featured_image = $page->getAttribute('featured_image');
		//$thumb = $ih->getThumbnail($img, 9999, 9999, false);
		$img = File::getByID($featured_image->fID);
		$fp = new Permissions($img);
		//$content = $page->getAttribute('content');
		/* CUSTOM ATTRIBUTE EXAMPLES:
		 * $example_value = $page->getAttribute('example_attribute_handle');
		 *
		 * HOW TO USE IMAGE ATTRIBUTES:
		 * 1) Uncomment the "$ih = Loader::helper('image');" line up top.
		 * 2) Put in some code here like the following 2 lines:
		 *      $img = $page->getAttribute('example_image_attribute_handle');
		 *      $thumb = $ih->getThumbnail($img, 64, 9999, false);
		 *    (Replace "64" with max width, "9999" with max height. The "9999" effectively means "no maximum size" for that particular dimension.)
		 *    (Change the last argument from false to true if you want thumbnails cropped.)
		 * 3) Output the image tag below like this:
		 *		<img src="<?php  echo $thumb->src ?>" width="<?php  echo $thumb->width ?>" height="<?php  echo $thumb->height ?>" alt="" />
		 *
		 * ~OR~ IF YOU DO NOT WANT IMAGES TO BE RESIZED:
		 * 1) Put in some code here like the following 2 lines:
		 * 	    $img_src = $img->getRelativePath();
		 * 	    list($img_width, $img_height) = getimagesize($img->getPath());
		 * 2) Output the image tag below like this:
		 * 	    <img src="<?php  echo $img_src ?>" width="<?php  echo $img_width ?>" height="<?php  echo $img_height ?>" alt="" />
		 */
		
		/* End data preparation. */

		/* The HTML from here through "endforeach" is repeated for every item in the list... */ ?>
		<div class="post">
			<h3 class="post-title">
				<a href="<?php  echo $url ?>" target="<?php  echo $target ?>"><?php  echo $title ?></a>
			</h3>
			<div class="post-meta">
				<p>
					<span class="author">Posted by <strong><?php echo $author; ?></strong></span>
					<span class="date">on <strong><?php echo $date; ?></strong></span>
				</p>
			</div>
			<?php if($featured_image && $fp->canViewFile()) :?>
			<div class="post-thumbnail">
				<p>
					<a href="<?php  echo $url ?>" target="<?php  echo $target ?>">
						<img src="<?php echo $img->getRelativePath(); ?>" alt="<?php echo $img->getTitle();?>" />
					</a>
				</p>
			</div>
			<?php endif; ?>
			<div class="post-description">
				<p><?php  echo $description ?></p>
			</div>
		</div>
	<?php  endforeach; ?>
 

	<?php  if ($showRss): ?>
		<div class="page-list-rss-icon">
			<a href="<?php  echo $rssUrl ?>" target="_blank"><img src="<?php  echo $rssIconSrc ?>" width="14" height="14" alt="<?php  echo t('RSS Icon') ?>" title="<?php  echo t('RSS Feed') ?>" /></a>
		</div>
		<link href="<?php  echo BASE_URL.$rssUrl ?>" rel="alternate" type="application/rss+xml" title="<?php  echo $rssTitle; ?>" />
	<?php  endif; ?>
 
</div><!-- end .post-list -->


<?php  if ($showPagination): $paginator->classCurrent = 'current';?>
<div class="pagination-centered">
	<ul class="pagination">
			<li class="arrow"><?php  echo $paginator->getPrevious('&laquo;') ?></li>
			<?php  echo $paginator->getPages('li') ?>
			<li class="arrow"><?php  echo $paginator->getNext('&raquo;') ?></li>
	</ul>
</div>	
<?php  endif; ?>