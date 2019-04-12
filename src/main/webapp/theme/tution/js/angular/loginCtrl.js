function loginCtrl($scope, $http, $location, $timeout, $interval, $rootScope, vcRecaptchaService) {
	
	$scope.firstData = true;
	
	
	$scope.login = function(value) {
		
	var homeLogin = value;
	$scope.loading = true;
	$scope.userType = 'student';
	if ($scope.email != null
			&& $scope.email != ''
			) {
		if ($scope.password != null && $scope.password != '' && $scope.password.length >= 6) {
			var forcelogin = $("#forcelogin").val();
			$("#forcelogin").val('normal');
			var data = {
				username : $scope.email,
				password : $scope.password
			}
			
				var responsePromise = $http.post(contextPath + '/player/login?url=' + data);
				responsePromise.success(function(data) {
					if (data.status == 'SUCCESS') {
						
						window.location = contextPath + "/";
						
					} else if (data.status == 'FAILED') {
						$("label.error").hide();
						$(".error").removeClass("error");
						$(".valid").removeClass("valid");
						// $scope.password = null;
						$scope.isError = true;
						$scope.loading = false;
						$scope.errorMessage = data.errorDetails;
						if (homeLogin)
							SharedDataService.runCallBack('errorRedirect', data.errorDetails);
					} else {
						$("label.error").hide();
						$(".error").removeClass("error");
						$(".valid").removeClass("valid");
						$scope.password = null;
						$scope.loading = false;
						$scope.isError = true;
						$scope.errorMessage = data.errorDetails;
						if (homeLogin)
							SharedDataService.runCallBack('errorRedirect', data.errorDetails);
					}
				})
			
		} else {
			$scope.loading = false;
			$scope.isError = false;
		}
	} else {
		$scope.isError = false;
		$scope.loading = false;
	}
}

// //SignUp Code
$scope.signUp = function() {
	$scope.loading = true;
	$scope.isError = false;
	$scope.countOtpSent = 0;
	$scope.successMsg = "";
			
				if (/^[a-zA-Z\s]*$/.test($scope.name) && $scope.name.length <= 25 && $scope.name != ''
						&& $scope.name.length >= 2) {
							if ($scope.email != null && $scope.email != ''
								&& (/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/.test($scope.email))) {
										 if(/^(\+91-|\+91|0)?\d{10}$/.test($scope.mobile)) {
												if ($scope.course != null && $scope.course != '') {
													if ($scope.subject != null && $scope.subject != '') {
														var data = {
																firstName : $scope.name,
																email : $scope.email,
																mobile : $scope.mobile,
																userType : $scope.userType,
																course : $scope.course,
																subject : $scope.subject
														}
														var responsePromise = $http.post(contextPath + '/player/signup', data);
														responsePromise.success(function(data) {
															if (data.status == 'SUCCESS') {
																$scope.loading = false;
																$scope.signUpDialog = false;
																$scope.otpDialog = true;
																$scope.signUpTermsCondition = false;
																$scope.signUpReferral = '';
																$scope.countOtpSent ++;
																$scope.gameName = '';
																if (data.mobile != null & data.email != null) {
																	$scope.fromSignUp = true;
																	$scope.otpDialog = true;
																	$scope.mobile = data.mobile;
																	$scope.secrateEmailOrEmail = "Mobile number " + $scope.mobile;
																} else if (data.email != null) {
																	$scope.otpDialog = false;
																	$scope.emailVerificationDialog = true;
																	$scope.verifiEmail = data.email;
																	$scope.secrateEmailOrEmail = $scope.email;
																}
																playerId = data.playerId;
																transactionId = data.transactionId;
																$scope.success = true;
																$scope.successMsg = data.successMsg;
															} else if (data.status == 'FAILED') {
																$scope.loading = false;
																$scope.signUpDialog = true;
																$scope.isError = true;
																$scope.signUpReferral = null;
																$scope.errorMessage = data.errorDetails;
																$timeout(function() {
																	$scope.isError = false;
																	if($scope.errorMessage == 'Invalid affiliate code') {
																		$scope.affiliateReferral = null;
																	}else if($scope.errorMessage == 'Invalid referral code') {
																		$scope.signUpReferral = null;
																	}
																}, 3000);
															} else {
																$scope.loading = false;
																$scope.pageError = true;
																$scope.page = {
																		title : 'Error Page'
																};
																$scope.responseError = data.errorDetails;
															}
														})
													
													} else {
														$scope.isError = true;
														$scope.errorMessage = 'Please verify your age';
														$scope.loading = false;
													}
												} else {
													$scope.isError = true;
													$scope.errorMessage = 'Gender is required';
													$scope.loading = false;
												}
											
										
										  } else { $scope.isError = true;
										  $scope.errorMessage = '';
										  $scope.loading = false; }
										 
							} else {
								$scope.isError = true;
								$scope.errorMessage = 'Email is required';
								$scope.loading = false;
							}
						
					
				} else {
					$scope.isError = true;
					$scope.errorMessage = 'Last name should not be empty';
					$scope.loading = false;
				}
			
		
	}


$scope.defineUserType = function(value) {
	$scope.userType = value;
	
}

$scope.submitFirstData = function() {
	$scope.name = null;
	$scope.email = null;
	$scope.mobile = null;
	$scope.password= null;
	$scope.course = null;
	$scope.subject = null;
	$scope.firstData = false;
	$scope.secondData = true;
}
}
