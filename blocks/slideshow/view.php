<?php  defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<div class="slideshow-wrapper">
  <div class="preloader"></div>
  <ul data-orbit>
    <?php
      foreach($images as $imgInfo) :
        $f = File::getByID($imgInfo['fID']);
        $fp = new Permissions($f);
        if ($fp->canViewFile()) :
    ?>
      <li>
        <a href="<?php echo ($imgInfo['url']=="" || !isset($imgInfo['position'])) ? "#" : $imgInfo['url']; ?>">
          <img src="<?php echo $f->getRelativePath();?>" alt="<?php echo $f->getTitle();?>" />
        </a>
        <?php if($f->getDescription() != ""):?>
          <div class="orbit-caption hide-for-small">
          	<a href="<?php echo ($imgInfo['url']=="" || !isset($imgInfo['position'])) ? "#" : $imgInfo['url']; ?>">
          		<h5 class="title"><?php echo $f->getTitle();?></h5>
          	</a>
          	<?php echo $f->getDescription();?>
          </div>
        <?php endif;?>
      </li>
    <?php endif; endforeach; ?>
  </ul>
</div>