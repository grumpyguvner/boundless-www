<?php	
	$name = $_POST['name'];
        $email = $_POST['email'];
	$subject = $_POST['subject'];
	$text = $_POST['message'];
	
 $to = "info@boundlesscommerce.co.uk";
 $message =" You received  a mail from ".$email;
 $message .=" Text of the message : ".$text;

 if(mail($to, $subject,$message)){
	echo "mail successful send";
} 
else{ 
	echo "there's some errors to send the mail";
}
?>