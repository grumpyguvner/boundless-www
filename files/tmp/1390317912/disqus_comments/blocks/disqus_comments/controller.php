<?php     
defined('C5_EXECUTE') or die(_("Access Denied."));

class DisqusCommentsBlockController extends BlockController {

	protected $btName = "Disqus Comments";
	protected $btDescription = "Allows users to comment your content with Disqus";
	public $btTable = 'btDisqusComments';
	public $btInterfaceWidth = '400';
	public $btInterfaceHeight = '200';
	protected $btWrapperClass = 'ccm-ui';
	
	public function getBlockTypeDescription() {
		return $this->btDescription;
	}
	
	public function getBlockTypeName() {
		return t("Disqus Comments");
	}
	
	public function __construct($b = null){ 
		parent::__construct($b);
	}
	
	public function on_page_view() {

    }
    
    function save($data) {
		$args['shortname'] = isset($data['shortname']) ? trim($data['shortname']) : '';
		$args['protocol'] = isset($data['protocol']) ? intval($data['protocol']) : 0;
		$args['disqus_developer'] = isset($data['disqus_developer']) ? intval($data['disqus_developer']) : 0;
		parent::save($args);
	}
	
}
?>
