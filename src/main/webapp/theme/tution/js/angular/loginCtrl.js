function loginCtrl($scope, $http, $location, $timeout, $interval, $rootScope, vcRecaptchaService) {
	$scope.login = function(value) {
	var homeLogin = value;
	$scope.loading = true;
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
	if (/^[a-zA-Z\s]*$/.test($scope.firstName) && $scope.firstName.length <= 25 && $scope.firstName != ''
			&& $scope.firstName != undefined && $scope.firstName.length >= 3) {
			
				if (/^[a-zA-Z\s]*$/.test($scope.lastName) && $scope.lastName.length <= 25 && $scope.lastName != ''
						&& $scope.firstName.length >= 2) {
					
						if ($scope.gameName != null && $scope.gameName != '' && $scope.gameName.length <= 8) {
							if ($scope.email != null && $scope.email != ''
								&& (/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/.test($scope.email))) {
										
										 if(/^(\+91-|\+91|0)?\d{10}$/.test($scope.mobile)) {
										 
											if (/[\@\#\$\%\^\&\*\(\)\_\+\!]/.test($scope.password) && /[a-z0-9]/.test($scope.password)
													&& /[A-Z]/.test($scope.password) && $scope.password.length >= 6) {
												if ($scope.gender != null && $scope.gender != '') {
													if ($scope.age != null && $scope.age != '') {
														if ($scope.signUpTermsCondition != null && $scope.signUpTermsCondition != '') {
														var data = {
																firstName : $scope.firstName,
																lastName : $scope.lastName,
																email : $scope.email,
																mobile : $scope.mobile,
																password : $scope.password,
																gender : $scope.gender,
																eligbleAge : $scope.age,
																gameName : $scope.gameName,
																referral : $scope.signUpReferral,
																termAccept : $scope.signUpTermsCondition,
																affiliateReferral :$scope.affiliateReferral
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
														$scope.errorMessage = 'Please accept terms and conditions';
														$scope.loading = false;
													    }
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
											} else {
												$scope.isError = true;
												$scope.errorMessage = 'Password is required';
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
							$scope.errorMessage = 'Game name is required';
							$scope.loading = false;
						}
					
				} else {
					$scope.isError = true;
					$scope.errorMessage = 'Last name should not be empty';
					$scope.loading = false;
				}
			
		} else {
			$scope.isError = true;
			$scope.errorMessage = 'First name should not be empty';
			$scope.loading = false;
		}
	}}
