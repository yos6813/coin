<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %> <%--ContextPath 선언 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html itemscope itemtype="http://schema.org/Article">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<%=cp%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=cp%>/resources/css/style.css" rel="stylesheet">
    <title>LOGIN</title>
</head>
<body class="gray-bg">
<div class="center middle-box text-center loginscreen animated fadeInDown">
	<div>
		
	</div>
    <div>
        <a onclick="onSignIn()">
	    	<img alt="login" src="<%=cp%>/resources/img/btn_google_1x.png">
	    </a>
    </div>
</div>
<script>
function onSignIn(googleUser) {
    var profile = googleUser.getBasicProfile();
    console.log('ID: ' + profile.getId());
    console.log('Name: ' + profile.getName());
    console.log('Image URL: ' + profile.getImageUrl());
    console.log('Email: ' + profile.getEmail());
    console.log('id_token: ' + googleUser.getAuthResponse().id_token);

    //do not post all above info to the server because that is not secure.
    //just send the id_token

    var redirectUrl = 'login';

    //using jquery to post data dynamically
    var form = $('<form action="' + redirectUrl + '" method="post">' +
                     '<input type="text" name="id_token" value="' +
                      googleUser.getAuthResponse().id_token + '" />' +
                                                           '</form>');
    $('body').append(form);
    form.submit();
 }
</script>
<script src="http://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<%=cp%>/resources/js/bootstrap.min.js"></script>
<script src="https://apis.google.com/js/client:platform.js?onload=start" async defer></script>
</body>
</html>