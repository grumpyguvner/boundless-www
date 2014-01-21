<?php     defined('C5_EXECUTE') or die("Доступ запрещен."); ?>
<?php     $c = Page::getCurrentPage(); ?>
<ul id="ccm-pagelist-tabs" class="ccm-dialog-tabs">
	<li class="ccm-nav-active"><a id="ccm-pagelist-tab-add" href="javascript:void(0);"><?php    echo ($bID>0)? 'Edit' : 'Add' ?></a></li>
	<li class=""><a id="ccm-pagelist-tab-preview"  href="javascript:void(0);">Preview</a></li>
</ul>

<input type="hidden" name="pageListToolsDir" value="<?php    echo $uh->getBlockTypeToolsURL($bt)?>/" />
<div id="ccm-pagelistPane-add" class="ccm-pagelistPane">
	<div class="ccm-block-field-group">
	  <h2>Disqus Options</h2>
	  Disqus Shortname for your site: <input type="text" name="disqus_shortname" value="<?php    echo $disqus_shortname?>" style="width: 100px;" />

	  <p><input type="radio" name="protocol" value="0" <?php  if (intval($protocol) == 0) echo "checked"; ?> /> Use HTTP</p>
	  <p><input type="radio" name="protocol" value="1" <?php  if (intval($protocol) == 1) echo "checked"; ?> /> Use HTTPS</p>
	</div>
	
	<div class="ccm-block-field-group">
	  <h2>Number and type of pages</h2>
	  Show
	  <input type="text" name="num" value="<?php    echo $num?>" style="width: 30px">
	  pages of type
	  <?php   
			$ctArray = CollectionType::getList();

			if (is_array($ctArray)) { ?>
	  <select name="ctID" id="selectCTID">
		<option value="0">** all types **</option>
		<?php     foreach ($ctArray as $ct) { ?>
		<option value="<?php    echo $ct->getCollectionTypeID()?>" <?php     if ($ctID == $ct->getCollectionTypeID()) { ?> selected <?php     } ?>>
		<?php    echo $ct->getCollectionTypeName()?>
		</option>
		<?php     } ?>
	  </select>
	  <?php     } ?>

	  <h2>Filter</h2>

	  <?php   
	  Loader::model('attribute/categories/collection');
	  $cadf = CollectionAttributeKey::getByHandle('is_featured');
	  ?>
	  <input <?php     if (!is_object($cadf)) { ?> disabled <?php     } ?> type="checkbox" name="displayFeaturedOnly" value="1" <?php     if ($displayFeaturedOnly == 1) { ?> checked <?php     } ?> style="vertical-align: middle" />
	  Featured pages.
		<?php     if (!is_object($cadf)) { ?>
			 (<strong>Note</strong>: First needed to create page attribute "is_featured")</span>
		<?php     } ?>
		<br/>
		<input type="checkbox" name="displayAliases" value="1" <?php     if ($displayAliases == 1) { ?> checked <?php     } ?> />
		Show page aliaces.
		<br/>

	</div>
	<div class="ccm-block-field-group">
		<h2>Pagination</h2>
		<input type="checkbox" name="paginate" value="1" <?php     if ($paginate == 1) { ?> checked <?php     } ?> />
		Paginate, if there are more elements than displayed.
	</div>
	<div class="ccm-block-field-group">
	  <h2>What pages to display</h2>
	  Display pages located:<br/>
	  <br/>
	  <div>
			<input type="radio" name="cParentID" id="cEverywhereField" value="0" <?php     if ($cParentID == 0) { ?> checked<?php     } ?> />
			anywhere
			&nbsp;&nbsp;
			<input type="radio" name="cParentID" id="cThisPageField" value="<?php    echo $c->getCollectionID()?>" <?php     if ($cParentID == $c->getCollectionID() || $cThis) { ?> checked<?php     } ?>>
			under current page

			&nbsp;&nbsp;
			<input type="radio" name="cParentID" id="cOtherField" value="OTHER" <?php     if ($isOtherPage) { ?> checked<?php     } ?>>
			under selected page </div>

			<div class="ccm-page-list-page-other" <?php     if (!$isOtherPage) { ?> style="display: none" <?php     } ?>>

			<?php     $form = Loader::helper('form/page_selector');
			if ($isOtherPage) {
				print $form->selectPage('cParentIDValue', $cParentID);
			} else {
				print $form->selectPage('cParentIDValue');
			}
			?>

			</div>
	</div>
	<div class="ccm-block-field-group">
	  <h2>Sort pages</h2>
	  Pages must follow
	  <select name="orderBy">
		<option value="display_asc" <?php     if ($orderBy == 'display_asc') { ?> selected <?php     } ?>>in sitemap order</option>
		<option value="chrono_desc" <?php     if ($orderBy == 'chrono_desc') { ?> selected <?php     } ?>>most recent first</option>
		<option value="chrono_asc" <?php     if ($orderBy == 'chrono_asc') { ?> selected <?php     } ?>>most early first</option>
		<option value="alpha_asc" <?php     if ($orderBy == 'alpha_asc') { ?> selected <?php     } ?>>in alphabetical order</option>
		<option value="alpha_desc" <?php     if ($orderBy == 'alpha_desc') { ?> selected <?php     } ?>>in reverse alphabetical order</option>
	  </select>
	</div>

	<div class="ccm-block-field-group">
	  <h2>Enable RSS feed</h2>
	   <input id="ccm-pagelist-rssSelectorOn" type="radio" name="rss" class="rssSelector" value="1" <?php    echo ($rss?"checked=\"checked\"":"")?>/> Yes
	   &nbsp;&nbsp;
	   <input type="radio" name="rss" class="rssSelector" value="0" <?php    echo ($rss?"":"checked=\"checked\"")?>/> No
	   <br /><br />
	   <div id="ccm-pagelist-rssDetails" <?php    echo ($rss?"":"style=\"display:none;\"")?>>
		   <strong>RSS feed header</strong><br />
		   <input id="ccm-pagelist-rssTitle" type="text" name="rssTitle" style="width:250px" value="<?php    echo $rssTitle?>" /><br /><br />
		   <strong>RSS feed description</strong><br />
		   <textarea name="rssDescription" style="width:250px" ><?php    echo $rssDescription?></textarea>
	   </div>
	</div>

	<style type="text/css">
	#ccm-pagelist-truncateTxt.faintText{ color:#999; }
	<?php     if(truncateChars==0 && !$truncateSummaries) $truncateChars=128; ?>
	</style>
	<div class="ccm-block-field-group">
	   <h2>Truncate summaries</h2>
	   <input id="ccm-pagelist-truncateSummariesOn" name="truncateSummaries" type="checkbox" value="1" <?php    echo ($truncateSummaries?"checked=\"checked\"":"")?> />
	   <span id="ccm-pagelist-truncateTxt" <?php    echo ($truncateSummaries?"":"class=\"faintText\"")?>>
	   		Truncate after
			<input id="ccm-pagelist-truncateChars" <?php    echo ($truncateSummaries?"":"disabled=\"disabled\"")?> type="text" name="truncateChars" size="3" value="<?php    echo intval($truncateChars)?>" />
			symbols
	   </span>
	</div>

</div>

<div id="ccm-pagelistPane-preview" style="display:none" class="ccm-preview-pane ccm-pagelistPane">
	<div id="pagelist-preview-content">Preview window</div>
</div>
