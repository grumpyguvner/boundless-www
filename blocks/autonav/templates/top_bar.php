<?php  defined('C5_EXECUTE') or die(_("Access Denied."));
$navItems = $controller->getNavItems();
?>

<ul class="right">
<?php  foreach ($navItems as $ni) :

	$classes = array();
	if ($ni->isCurrent) {
		$classes[] = 'nav-selected';
	}
	if ($ni->inPath) {
		$classes[] = 'nav-path-selected';
	}
	if ($ni->hasSubmenu) {
		$classes[] = 'has-dropdown';
	}
	$classes = implode(" ", $classes);
	?>

	<li class="<?php echo $classes?>">
		<a href="<?php echo $ni->url?>" target="<?php echo $ni->target?>"><?php echo $ni->name?></a>
		<?php
			if ($ni->hasSubmenu) {
				echo '<ul class="dropdown">'; //opens a dropdown sub-menu
			} else {
				echo '</li>';
				echo str_repeat('</ul>', $ni->subDepth); //closes dropdown sub-menu(s) and their top-level nav item(s)
			}
		?>
<?php  endforeach; ?>
</ul>
