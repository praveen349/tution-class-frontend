function headerCtrl($scope, $http, $location, $timeout, $interval,
		$rootScope, vcRecaptchaService) {
	$scope.sender = {};
	$scope.response = {};
	$scope.recaptchaIsFailed = false;
	$scope.google = {};
	$scope.contact = function() {
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
			if ($scope.result == $scope.textcapcha) {
				
				var responsePromise = $http.post(contextPath + '/contact',
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
				$timeout(function() {
					$scope.recaptchaIsFailed = true;
					$scope.recaptchaErrormsg = "Invalid captcha";
				}, 500);
			}
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
	
	
	
    $(function () {
        //Docs: https://github.com/twitter/typeahead.js/blob/master/doc/bloodhound.md#remote
        //      http://stackoverflow.com/questions/26642340/using-twitter-typeahead-in-asp-net-mvc

        var remoteUrl = location.protocol + '//' + location.host + "/home/getcities/?query=%QUERY";
        var $SelectedSuggestion = $('#citySuggestion').hide(),
            cities = new Bloodhound({
                datumTokenizer: function (datum) {
                    return Bloodhound.tokenizers.whitespace(datum.Name);
                },
                queryTokenizer: Bloodhound.tokenizers.whitespace,
                remote: {
                    url: remoteUrl,
                    filter: function (cities) {
                        return cities;
                    }
                }
            });

        // Initialize the Bloodhound suggestion engine
        cities.initialize();

        // Instantiate the Typeahead UI
//        $('#citySearch.typeahead').typeahead(null, {
//            displayKey: 'Name',
//            source: cities.ttAdapter()
//        }).on("typeahead:selected", function (obj, selectedItem) {
//            //$SelectedSuggestion.html("Selected Suggestion Item: " + JSON.stringify(selectedItem)).show();
//            $("#citySpan").text(selectedItem.Name);
//            $("#selectedCityName").val(selectedItem.Name).trigger('change');
//            $("#SearchText").focus();
//            var searchCityName = $("#citySpan").html();
//            createCookie("searchCityCookie", searchCityName, 1);
//            createCookie("cityName", searchCityName, 1);
//            $("div.btn-group").removeClass("open");
//            if ($("#refineLocality").length) {
//                SetTypeaheadForLocality();
//            }
//        }).on("typeahead:autocompleted", function (obj, selectedItem) {
//            //$SelectedSuggestion.html("Selected Suggestion Item: " + JSON.stringify(selectedItem)).show();
//            $("#citySpan").text(selectedItem.Name);
//            $("#selectedCityName").val(selectedItem.Name).trigger('change');
//            $("#SearchText").focus();
//            var searchCityName = $("#citySpan").html();
//            createCookie("searchCityCookie", searchCityName, 1);
//            createCookie("cityName", searchCityName, 1);
//            $("div.btn-group").removeClass("open");
//            if ($("#refineLocality").length) {
//                SetTypeaheadForLocality();
//            }
//        });

        if ($("#refineLocality").length) {
            SetTypeaheadForLocality();
        }

        $('#citySearch').keypress(function (e) {
            if (e.which == 13) // Enter key = keycode 13
            {
                //alert($("#citySearch").val().length);
                if ($("#citySearch").val().length)
                {
                    $("#citySpan").text($("#citySearch").val());
                    $("#selectedCityName").val($("#citySearch").val()).trigger('change');
                }

                $("div.btn-group").removeClass("open");
                return false;
            }
        });

        $(".city-select-list li").click(function () {
            $("#citySpan").text($(this).text());
            $("#selectedCityName").val($(this).text()).trigger('change');
            $("#SearchText").focus();
            var searchCityName = $("#citySpan").html();
            createCookie("searchCityCookie", searchCityName, 1);
            createCookie("cityName", searchCityName, 1);
            $("div.btn-group").removeClass("open");
            if ($("#refineLocality").length) {
                SetTypeaheadForLocality();
            }
        })

        $('#refineLocality').keypress(function (e) {
            if (e.which == 13) // Enter key = keycode 13
            {
                if ($("#refineCourse").length) {
                    $("#refineCourse").focus();
                }
                return false;
            }
        });

        if($('#selectedCityName').length)
        {
            $('#selectedCityName').change(function () {
                if ($('#refine-search').length)
                {
                    hometuitionSearch(); event.stopPropagation(); return false;
                }
            });
        }

    });

    function SetTypeaheadForLocality() {
        //Docs: https://github.com/twitter/typeahead.js/blob/master/doc/bloodhound.md#remote
        //      http://stackoverflow.com/questions/26642340/using-twitter-typeahead-in-asp-net-mvc

        if ($("#refineLocality").length) {
            $("#refineLocality.typeahead").typeahead('destroy');

            var cityValue = readCookie("cityName");
            if (cityValue)
                cityValue = cityValue.toLowerCase();
            var remoteLocationUrl = location.protocol + '//' + location.host + "/home/getlocalities/?city=" + cityValue + "&query=%QUERY";
            var $SelectedSuggestion = $('#localitySuggestion').hide(),
                localities = new Bloodhound({
                    datumTokenizer: function (datum) {
                        return Bloodhound.tokenizers.whitespace(datum.Name);
                    },
                    queryTokenizer: Bloodhound.tokenizers.whitespace,
                    remote: {
                        url: remoteLocationUrl,
                        filter: function (localities) {
                            return localities;
                        }
                    }
                });

            // Initialize the Bloodhound suggestion engine
            localities.initialize();

            // Instantiate the Typeahead UI
            $('#refineLocality.typeahead').typeahead(null, {
                displayKey: 'Name',
                source: localities.ttAdapter()
            }).on("typeahead:selected", function (obj, selectedItem) {
                $("#refineLocality").text(selectedItem.Name);
                $("#refineLocality").trigger("change");
                if ($("#refineCourse").length) {
                    $("#refineCourse").focus();
                }
            }).on("typeahead:autocompleted", function (obj, selectedItem) {
                $("#refineLocality").text(selectedItem.Name);
                $("#refineLocality").trigger("change");
                if ($("#refineCourse").length) {
                    $("#refineCourse").focus();
                }
            });
        }
    }

}
