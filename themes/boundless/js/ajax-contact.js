 $(document).ready(function(){
	$("#sendmail").click(function(){
		var valid = '';
		var isr = ' is required.';
		var name = $("#name").val();
		var email = $("#email").val();
		var subject = $("#subject").val();
		var message = $("#message").val();
		if (name.length<1) {
			valid += '<br />Name'+isr;
		}
		if (!email.match(/^([a-z0-9._-]+@[a-z0-9._-]+\.[a-z]{2,4}$)/i)) {
			valid += '<br />A valid Email'+isr;
		}
		if (subject.length<1) {
			valid += '<br />Subject'+isr;
		}
		if (message.length<1) {
			valid += '<br />Text'+isr;
		}
		if (valid!='') {
                    
			$("#response").fadeIn("slow");
			$("#response").html("Error:"+valid);
		}
		else {
                        
			var datastr ='name=' + name + '&email=' + email + '&subject=' + subject + '&message=' + message;
			$("#response").css("display", "block");
			$("#response").html("Sending message .... ");
			$("#response").fadeIn("slow");
			setTimeout("send('"+datastr+"')",2000);
		}
		return false;
	});
});
function send(datastr){
    
	$.ajax({	
		type: "POST",
		url: "contact.php",
		data: datastr,
		cache: false,
		success: function(html){
                    alert('test three');
                
		$("#response").fadeIn("slow");
		$("#response").html(html);
		setTimeout('$("#response").fadeOut("slow")',2000);
	}
	});
}
