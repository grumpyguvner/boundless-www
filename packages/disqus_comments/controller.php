<?php      

defined('C5_EXECUTE') or die(_("Access Denied."));

class DisqusCommentsPackage extends Package {

	protected $pkgHandle = 'disqus_comments';
	protected $appVersionRequired = '5.3.0';
	protected $pkgVersion = '0.5';
	
	public function getPackageDescription() {
		return t('Allows users to comment your content with Disqus');
	}
	
	public function getPackageName() {
		return t('Disqus Comments');
	}
	
	public function install() {
		$pkg = parent::install();
			
		//install blocks
		BlockType::installBlockTypeFromPackage('disqus_comments', $pkg); 
		BlockType::installBlockTypeFromPackage('disqus_blog_index', $pkg); 

	}
}
