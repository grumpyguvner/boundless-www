<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
	<footer id="footer" class="row">
		<div class="footer-link">
			<div class="large-9 columns">
			<?php
				$a = new GlobalArea('Footer Link');
				$a->display($c);
			?>
			</div>
			<div class="copyright large-3 columns">
				&copy; <?php echo date('Y')?> <a href="<?php echo DIR_REL?>/"><?php echo SITE?></a>.
				<?php
				$u = new User();
				if ($u->isRegistered()) { ?>
					<?php
					if (Config::get("ENABLE_USER_PROFILES")) {
						$userName = '<a href="' . $this->url('/profile') . '">' . $u->getUserName() . '</a>';
					} else {
						$userName = $u->getUserName();
					}
					?>
					<style type="text/css">
						#header{top: 49px;}
					</style>
					<span class="sign-in"><?php echo t('%s.', $userName)?> <a href="<?php echo $this->url('/login', 'logout')?>"><?php echo t('Logout')?></a></span>
				<?php  } else { ?>
					<span class="sign-in"><a href="<?php echo $this->url('/login')?>"><?php echo t('Login')?></a></span>
				<?php  } ?>
			</div>
		</div>
	</footer>

<?php  Loader::element('footer_required'); ?>

</body>
	<script src="<?php  echo $this->getThemePath(); ?>/assets/js/foundation.min.js"></script>
  <script>
    $(document).foundation();
  </script>
</html>