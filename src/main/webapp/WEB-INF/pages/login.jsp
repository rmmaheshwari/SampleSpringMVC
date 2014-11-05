<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html lang="en">
<head>
<script src="resources/js/jquery-2.1.1.min.js"></script>
</head>
<body>
	<script type="text/javascript">
		(function() {
			var po = document.createElement('script');
			po.type = 'text/javascript';
			po.async = true;
			po.src = 'https://apis.google.com/js/client:plusone.js?onload=render';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(po, s);
		})();
		var config = {
			'client_id' : '<<clientid>>',
			'scope' : 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile'
		};
	</script>
	<div id="fb-root"></div>
	<script type="text/javascript">
		window.fbAsyncInit = function() {
			// init the FB JS SDK
			FB.init({
				appId : '<<fbappId>>', // App ID from the app dashboard
				status : true, // Check Facebook Login status
				xfbml : true
			// Look for social plugins on the page
			});

			// Additional initialization code such as adding Event Listeners goes here
		};

		// Load the SDK asynchronously
		(function() {
			// If we've already installed the SDK, we're done
			if (document.getElementById('facebook-jssdk')) {
				return;
			}

			// Get the first script element, which we'll use to find the parent node
			var firstScriptElement = document.getElementsByTagName('script')[0];

			// Create a new script element and set its id
			var facebookJS = document.createElement('script');
			facebookJS.id = 'facebook-jssdk';

			// Set the new script's source to the source of the Facebook JS SDK
			facebookJS.src = '//connect.facebook.net/en_US/all.js';

			// Insert the Facebook JS SDK into the DOM
			firstScriptElement.parentNode.insertBefore(facebookJS,
					firstScriptElement);
		}());
	</script>
	<div class="container">
		<div class="container clearfix">
			<div class="content clearfix">
				<div class="login_screen">
					<a href="#" onclick="doFbSignup()" class="btn">Facebook</a> <br />
					<a href="#" class="btn " onclick="doGoogleSignUp()"> Google +</a>
				</div>
			</div>
			<div id="userInfo"></div>

		</div>
	</div>
</body>
<script type="text/javascript">
	function doFbSignup() {
		FB
				.login(
						function(response) {
							if (response.authResponse) {
								var accessToken = response.authResponse.accessToken;
								console.log('Facebook login successfull');
								$.ajax({
									type : 'GET',
									url : "facebookInfo?token=" + accessToken,
									success : function(response) {
										console.log(response);
										document.getElementById("userInfo").innerHTML="<pre>"+JSON.stringify(response)+"</pre>";
									},
									error : function(response) {
										console.log(response);
										console.log(configuration);
									}
								});
							} else {
								console
										.log('User cancelled login or did not fully authorize.');
							}
						}, {
							scope : 'email'
						});
	}
	function doGoogleSignUp() {

		gapi.auth.authorize(config, function(authResult) {
			var accessToken = authResult.access_token;
			console.log(accessToken);
			$.ajax({
				type : 'GET',
				url : "googleInfo?token=" + accessToken,
				success : function(response) {
					console.log(response);
					document.getElementById("userInfo").innerHTML="<pre>"+JSON.stringify(response)+"</pre>";
				},
				error : function(response) {
					console.log(response);
					console.log(configuration);
				}
			});

		});

	}
</script>
</html>