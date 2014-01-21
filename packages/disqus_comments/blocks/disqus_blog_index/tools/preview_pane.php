<?php   
defined('C5_EXECUTE') or die("ДAccess Denied.");

Loader::block('disqus_blog_index');

$previewMode = true;
$nh = Loader::helper('navigation');
$controller = new DisqusBlogIndexBlockController($b);


$_REQUEST['num'] = ($_REQUEST['num'] > 0) ? $_REQUEST['num'] : 0;
$_REQUEST['cThis'] = ($_REQUEST['cParentID'] == $controller->cID) ? '1' : '0';
$_REQUEST['cParentID'] = ($_REQUEST['cParentID'] == 'OTHER') ? $_REQUEST['cParentIDValue'] : $_REQUEST['cParentID'];


$controller->num 		= $_REQUEST['num'];
$controller->cParentID 	= $_REQUEST['cParentID'];
$controller->cThis 		= $_REQUEST['cThis'];
$controller->orderBy	= $_REQUEST['orderBy'];
$controller->ctID 		= $_REQUEST['ctID'];
$controller->rss 		= $_REQUEST['rss'];
$controller->displayFeaturedOnly = $_REQUEST['displayFeaturedOnly'];

$cArray = $controller->getPages();

//echo var_dump($cArray);
require(dirname(__FILE__) . '/../preview_view.php');
exit;
