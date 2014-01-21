<?php    
defined('C5_EXECUTE') or die("Access Denied.");
$survey=$controller;  
//echo $survey->surveyName.'<br>';
$miniSurvey=new MiniSurvey($b);
$miniSurvey->frontEndMode=true;
?>
<h5><?php echo $survey->surveyName ?></h5>
<a name="<?php  echo $survey->questionSetId ?>"></a><br/>
<?php  if ($invalidIP) { ?>
<div class="error><p><?php echo $invalidIP?></p></div>
<?php  } ?>

<form enctype="multipart/form-data" id="miniSurveyView<?php echo intval($bID)?>" class="miniSurveyView" method="post" action="<?php  echo $this->action('submit_form').'#'.$survey->questionSetId?>">
	<?php   if( $_GET['surveySuccess'] && $_GET['qsid']==intval($survey->questionSetId) ){ ?>
		<div data-alert class="alert-box success">
			<?php  echo $survey->thankyouMsg ?>
			<a href="#" class="close">&times;</a>
		</div> 
	<?php   }elseif(strlen($formResponse)){ ?>
		<div data-alert class="alert-box alert">
			<ul>
				<?php  echo $formResponse ?>
				<?php
				if(is_array($errors) && count($errors)) foreach($errors as $error){
					echo '<li>'.$error.'</li>';
				} ?>
			</ul>
			<a href="#" class="close">&times;</a>
		</div>
	<?php  } ?>
	<input name="qsID" type="hidden" value="<?php echo  intval($survey->questionSetId)?>" />
	<?php   $qs = $miniSurvey->loadQuestions( $survey->questionSetId,$bID);  
		while( $questionRow = $qs->fetchRow()) {
			$requiredSymbol=($questionRow['required'])?'&nbsp;<span class="required">*</span>':'';
			echo '<label for="Question'.intval($questionRow['msqID']).'">'.$questionRow['question'].''.$requiredSymbol.'</label>';
			echo $miniSurvey->loadInputType($questionRow, false);
		}
		$surveyBlockInfo = $miniSurvey->getMiniSurveyBlockInfoByQuestionId($survey->questionSetId,intval($bID));
		if($surveyBlockInfo['displayCaptcha']) {
			$captcha = Loader::helper('validation/captcha');				
			echo $captcha->label();
			$captcha->showInput();
   			$captcha->display();
		}
		echo '<input class="formBlockSubmitButton ccm-input-button button" name="Submit" type="submit" value="'.t('Submit').'" />';
		
	?>
</form>