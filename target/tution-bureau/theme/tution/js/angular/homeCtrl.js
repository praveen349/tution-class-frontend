function homeCtrl($scope, $http, $location, $timeout, $interval,$rootScope, vcRecaptchaService) {
	
	//alert("welcome home")
	
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

    

}