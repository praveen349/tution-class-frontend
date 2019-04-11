function contactUsCtrl($scope, $http, $location, $timeout, $interval,
		$rootScope, vcRecaptchaService) {
	$scope.sender = {};
	$scope.response = {};
	$scope.recaptchaIsFailed = false;
	$scope.google = {};
	$scope.contactUsSubmit = function() {
		$scope.recaptchaIsFailed = false;
		$scope.loading = true;
		if ($scope.sender.name != undefined
				&& $scope.sender.name != ''
				&& $scope.sender.email != undefined
				&& /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/
						.test($scope.sender.email) && $scope.sender.email != ''
				&& $scope.sender.mobile != undefined
				&& $scope.sender.mobile != ''
				&& $scope.sender.mobile.length == 10
				&& $scope.sender.msg != undefined && $scope.sender.msg != '') {
				var data = {
					name : $scope.sender.name,
					email : $scope.sender.email,
					mobile : $scope.sender.mobile,
					subject : $scope.sender.subject,
					message : $scope.sender.msg
				}
				var responsePromise = $http.post(contextPath + '/contact/us',
						data);
				responsePromise.success(function(data) {
					if (data.status == 'SUCCESS') {
						$scope.sender.isFailed = false;
						$scope.sender.successMsg = data.successMsg;
						$scope.sender.isSuccess = true;
						$scope.textcapcha = '';
						$scope.capcha();
						$timeout(function() {
							$scope.sender.isSuccess = false;
							$scope.sender = {
								name : null,
								email : null,
								mobile : null,
								msg : null,
								subject : null
							}
						}, 500);
					} else {
						$scope.sender.isFailed = true;
						$scope.sender.errorMsg = data.errorDetails;
					}
					$scope.loading = false;

				})
			
		} else {
			$scope.loading = false;
		}
	};

	$scope.capcha = function() {

		var alpha = [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
				'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
				'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8',
				'9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
				'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w',
				'x', 'y', 'z' ];
		var a = alpha[Math.floor(Math.random() * 62)];
		var b = alpha[Math.floor(Math.random() * 62)];
		var c = alpha[Math.floor(Math.random() * 62)];
		var d = alpha[Math.floor(Math.random() * 62)];
		var e = alpha[Math.floor(Math.random() * 62)];
		var f = alpha[Math.floor(Math.random() * 62)];

		$scope.result = a + b + c + d + e + e + f;

		document.getElementById("capt").value = $scope.result;
	}

}
