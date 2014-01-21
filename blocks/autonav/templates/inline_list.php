<?php  defined('C5_EXECUTE') or die(_("Access Denied."));
$navItems = $controller->getNavItems();
?>
<ul class="inline-list">
<?php  foreach ($navItems as $ni) :

	$classes = array();
	if ($ni->isCurrent) {
		$classes[] = 'active';
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
	</li>
<?php  endforeach; ?>
</ul>
