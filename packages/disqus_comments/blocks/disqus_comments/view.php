<?php       
defined('C5_EXECUTE') or die(_("Access Denied."));

    $c = Page::getCurrentPage();
	$cID = $c->getCollectionID();

	$nh = Loader::helper('navigation');
	$cPath = $nh->getLinkToCollection($c);
    
?>

	<div style="clear: both; height: 0px;"></div>

		<div id="disqus_thread"></div>
		<script type="text/javascript">
			/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
			var disqus_shortname = '<?php    echo $shortname; ?>'; // required: replace example with your forum shortname

			// The following are highly recommended additional parameters. Remove the slashes in front to use.
			var disqus_identifier = '<?php    echo $shortname."-article-".$cID; ?>';
			var disqus_url = '<?php    echo BASE_URL.$cPath; ?>';
			var disqus_developer = <?php    echo intval($disqus_developer); ?>;

			<?php 
			if (intval($protocol) == 0) {
				echo "var disqus_protocol = 'http'; ";
			} else {
				echo "var disqus_protocol = 'https'; ";
			}
			?>

			/* * * DON'T EDIT BELOW THIS LINE * * */
			(function() {
				var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
				dsq.src = disqus_protocol + '://' + disqus_shortname + '.disqus.com/embed.js<?php  if (intval($protocol) == 1) echo "?https"; //TRY TO FORCE HTTPS ?>';
				(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
			})();
		</script>
		<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
		<a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>
		
	<div style="clear: both; height: 15px;"></div>
	
