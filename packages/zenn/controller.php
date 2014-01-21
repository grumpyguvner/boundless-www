<?php      

defined('C5_EXECUTE') or die(_("Access Denied."));

class ZennPackage extends Package {

	protected $pkgHandle = 'zenn';
	protected $appVersionRequired = '5.5.0';
	protected $pkgVersion = '1.0.0';
	
	public function getPackageDescription() {
		return t('A minimal and responsive theme.');
	}
	
	public function getPackageName() {
		return t('Zenn');
	}
	
	public function install() {
		$pkg = parent::install();
		PageTheme::add('zenn', $pkg);
		
		Loader::library('content/importer');
		$ci = new ContentImporter();
		$ci->importContentFile($this->getPackagePath(). '/data/pagetypes.xml');
		
		$ak = CollectionAttributeKey::getByHandle('featured_image');
		if(!$ak) {
			$ci->importContentFile($this->getPackagePath(). '/data/akfeaturedimage.xml');
		}
		$ak = CollectionAttributeKey::getByHandle('content');
		if(!$ak) {
			$ci->importContentFile($this->getPackagePath(). '/data/akcontent.xml');
		}
		$ak = CollectionAttributeKey::getByHandle('tags');
		if(!$ak) {
			$ci->importContentFile($this->getPackagePath(). '/data/aktags.xml');
		}
	}
}
