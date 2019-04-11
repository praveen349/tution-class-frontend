<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home Tutors, Online Tutors &amp; Part Time Teaching Jobs website.</title>
    
    <meta name="keywords" content="Home Tuition, Home Tution, Home Tutor, Part Time Tutoring Jobs, Coaching at Home, Learn at home, Online Tuitions, Online Tutions, Online Tutors, Teach at Home." />
    <meta name="description" content="We help students and tutors find each other. Students can find tutors for all subjects and tutors can find home tuition needs posted by students." />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="https://static.hometutorsite.com/content/images/common-sm/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.2/custom/bootstrap.min.css">
    
    <link rel="stylesheet" href="https://static.hometutorsite.com/content/css/countrySelect.css">
    <link href="//fonts.googleapis.com/css?family=Noto+Sans%7cOpen%20Sans%7cMerienda+One" rel='stylesheet' type='text/css'>
    
    <link href="https://static.hometutorsite.com/content/css/main-26may17.css" rel='stylesheet' type='text/css'>

    
    <link href="https://static.hometutorsite.com/content/css/custom-20aug2018.css" rel="stylesheet" type="text/css" />


    
    
    

    <!-- Google Tag Manager -->
<script>
    (function (w, d, s, l, i) {
    w[l] = w[l] || []; w[l].push({
        'gtm.start':
            new Date().getTime(), event: 'gtm.js'
    }); var f = d.getElementsByTagName(s)[0],
        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
            'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-KTDR77M');</script>
<!-- End Google Tag Manager -->


    <script src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
    

    <!--[if lt IE 9]>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/tution/js/jquery.validate.js"></script>
    


    
    
    
    <%-- <script src="${pageContext.request.contextPath}/resources/tution/js/countrySelect.min.js"></script> --%>
    <!-- <script src="https://static.hometutorsite.com/content/js/countrySelect.min.js"></script> -->
    <!-- <script src="https://twitter.github.io/typeahead.js/releases/0.10.4/typeahead.bundle.min.js"></script> -->


    <script>
        $(document).ready(function () {
        var defaultCountryValue = 'in';
            $("#country").countrySelect({ defaultCountry: defaultCountryValue });
        });

    </script>

    
    
    

    

    
    


    
    <script src="https://maps.googleapis.com/maps/api/js?sensor=true"></script>
<script>
    //function initialize() {
    //    var mapCanvas = document.getElementById('map-canvas');
    //    var mapOptions = {
    //        center: new google.maps.LatLng(17.731400, 83.335457),
    //        zoom: 16,
    //        mapTypeId: google.maps.MapTypeId.ROADMAP,
    //        position: LatLng
    //    }
    //    var map = new google.maps.Map(mapCanvas, mapOptions);
    //}
    //google.maps.event.addDomListener(window, 'load', initialize);

    function initialize() {
        var myLatlng = new google.maps.LatLng(17.731782, 83.305940);
        var mapOptions = {
            zoom: 15,
            center: myLatlng
        }
        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: 'Hello World!'
        });
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>
    
    
    
    <script src="https://static.hometutorsite.com/content/js/countrySelect.min.js"></script>
     <script src="https://twitter.github.io/typeahead.js/releases/0.10.4/typeahead.bundle.min.js"></script> 



   <body>

	<tiles:insertAttribute name="css" />


            <div id="pageContent" style="position: fixed; display: none">
                <tiles:insertAttribute name="header" />
                <div id="htmlContent" style="position: fixed; display: none">
                    <tiles:insertAttribute name="content" />
                </div>
                <div id="pageFooter" style="position: fixed; display: none">
                    <tiles:insertAttribute name="footer" />
                </div>
            </div>
            
            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	 <!-- Anglar App Script -->
       <tiles:insertAttribute name="js" />

       <script>
           (
           								function(i, s, o, g, r, a, m) {
           									i['GoogleAnalyticsObject'] = r;
           									i[r] = i[r] || function() {
           										(i[r].q = i[r].q || []).push(arguments)
           									}, i[r].l = 1 * new Date();
           									a = s.createElement(o), m = s
           											.getElementsByTagName(o)[0];
           									a.async = 1;
           									a.src = g;
           									m.parentNode.insertBefore(a, m)
           								})
           						(
           								window,
           								document,
           								'script',
           								'https://www.google-analytics.com/analytics.js',
           								'ga');
           
           		ga('create', 'UA-104765514-1', 'auto');
           		ga('send', 'pageview');
       </script>
       
       
       
       <script>
           $(document).ready(
           
           				function() {
           					
           					setTimeout(function() {
           						// $("#bodymovin").css("display", "none"); 
           						$("#htmlContent").css("position", "static");
           						$("#htmlContent").css("display", "block");
           						$("#pageContent").css("position", "static");
           						$("#pageContent").css("display", "block");
           						$("#pageFooter").css("position", "static");
           						$("#pageFooter").css("display", "block");
           						
           						
           					}, 0)
           
           				});
       </script>
       
   
    </body>
    

    
<script>
function validateIndianMobileNumber(field, rules, i, options) {
        console.log('in validateIndianMobileNumber');
        var country = readCookie("country");
        var isValidMobile = true;
        console.log(country);
        var selectedFlagDivTitleString = $(".selected-flag").attr("title");
        var isShowingIndianFlag = false;
        if (selectedFlagDivTitleString) {
            isShowingIndianFlag = selectedFlagDivTitleString.includes("India");
        }
        if (country == '95' && isShowingIndianFlag) {
            if ($("#RegisterEmail").length) {
                var indianMobileNumber = $("#RegisterEmail").val();
                console.log('mobilenumber :' + indianMobileNumber);

                if (!isNumeric(indianMobileNumber)) {
                    isValidMobile = false;
                }
                console.log('length : ' + indianMobileNumber.length);
                if (indianMobileNumber.length != 10) {
                    isValidMobile = false;
                }

                if (indianMobileNumber.includes(".") || indianMobileNumber.includes("+") || indianMobileNumber.includes("-")) {
                    isValidMobile = false;
                }
            }

            if ($("#Email").length) {
                var indianMobileNumber = $("#Email").val();
                console.log('mobilenumber :' + indianMobileNumber);

                if (!isNumeric(indianMobileNumber)) {
                    isValidMobile = false;
                }
                console.log('length : ' + indianMobileNumber.length);
                if (indianMobileNumber.length != 10) {
                    isValidMobile = false;
                }

                if (indianMobileNumber.includes(".") || indianMobileNumber.includes("+") || indianMobileNumber.includes("-")) {
                    isValidMobile = false;
                }
            }
        }

        if (!isValidMobile) {
            return "Enter 10 digit mobile number.";
        }

    }

    function isNumeric(n) {
        return !isNaN(parseFloat(n)) && isFinite(n)
    }


</script>

    

</head>

    
    