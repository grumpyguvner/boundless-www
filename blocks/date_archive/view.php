<?php  defined('C5_EXECUTE') or die("Access Denied.");  ?>
<div id="date-archives">
	<h6 class="block-title"><?php  echo $title ?></h6>
	<?php 
	if ($firstPost) { 
		$startDt = new DateTime();
		$firstPost = new DateTime($firstPost->format('m/01/Y'));
		$first = date_diff($startDt,$firstPost);
		$first = $first->m;
		
		if($first > $numMonths) {
			$first = $numMonths;
		}	
		
		$startDt->modify('-'.$first.' months');
		$workingDt = $startDt;
		$year = $workingDt->format('Y');
		?>
		<ul>
			<?php  
			$i=0;
			while(true) {
				if($workingDt->format('Y') > $year) {
					$year = $workingDt->format('Y');
					?><?php 
				}
				?>
				<li>
				<?php  if($target instanceof Page) { ?>
						<a href="<?php  echo $navigation->getLinkToCollection($target)."?year=".$workingDt->format('Y'). "&month=".$workingDt->format('m') ?>" <?php  echo ($workingDt->format('m-Y') == $_REQUEST['month']?'class="selected"':'')?>><?php  echo $workingDt->format('F, Y') ?></a>
				<?php  } else { ?>
						<?php  echo $workingDt->format('F, Y') ?>
				<?php  } ?>
				</li>
				<?php 
				if($i >= $first) { break; }
				$workingDt->modify('+1 month');
				$i++;
			} ?>
		</ul>
<?php  } ?>
</div>