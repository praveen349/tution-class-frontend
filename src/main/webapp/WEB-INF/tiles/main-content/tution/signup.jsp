<div class="container" id="loginApp" ng-controller="loginCtrl">
    <div class="container-wrapper starter-template-none container-wrapper-lp">
        <div class="text-center">
            <div class="row">
                <div class="logo-home logo-home-lp">
                    <a href="/" class="home-sprite-none">
                        <span class="logo">
                            <img src="https://static.hometutorsite.com/content/images/common-sm/transparent.png" class="img-responsive home-sprite home-logo-image" alt="Home Tutor Site logo" width="1" height="1" />
                        </span>
                        <h1 class="logo-title">
                            Home Tutor Site
                            <span class="logo-caption">Learn & Achieve!!</span>
                        </h1>
                    </a>
                </div>

            </div>

            <div class="col-md-12 home-main-quote-block">
                <div class="row">
                    <div class="home-hiw-main-heading home-main-quote">
                        <h2 class="logoCaptionStyle">We Help Students and Tutors Find Each Other</h2>
                    </div>
                </div>
            </div>

        </div>

        <div class="hts-whatsapp-top-block">
            <div><img class="common-sm-sprite contact-whatsappicon text-center sm-contact-font-size" />+91 9801303935</div>
        </div>
        <div class="hts-contact-top-block">
            <div> <img class="common-sm-sprite contact-mobileicon text-center sm-contact-font-size" />+91 9572419653/55/66</div>

        </div>
    </div>

    <div class="row">

        <div class="full-width full-width-lp">
            <div class="right-common-content lp-content">

                <div class="row">

                    <div class="col-md-5 col-md-push-7 col-">

                        <div id="HomeTutorOrStudentParentInteractPanel" class="form-horizontal contact-form lp-form">
                            <div class="RegistraitionFreeStylePadding" id="RegistrationIsFree"><button type="button" class="RegistrationFreeStyle"><div class="MarginTopStyle"><span style="font-weight: bold;FONT: MONOSPACE;LETTER-SPACING: 2PX;">FREE</span> Registration</div></button></div>

                            <div class="hidden-xs"><span class="arrow-hand"><img src="https://static.hometutorsite.com/content/images/landing/arrow-hand-red.png" /></span></div>
                            <div id="rightSideForm">
                                



<form  class="form-validation" ng-show="firstData" ng-submit="submitFirstData()">    <input type="hidden" id="online" name="online" value="false" />
    <div class="get-in-touch">
        <div class="form-control-lp">
            I am a &nbsp;
            <label class="rad studentStyle">
                <input type="radio" id="radioStudentLanding" ng-model="userType" ng-change="defineUserType('student')" name="UserTypeLanding" class="radioRegHeader" value="student" checked />
                <i></i>
                Student/Parent &nbsp;
            </label>
            <label class="rad tutorStyle">
                <input type="radio" id="radioTutorLanding" ng-model="userType" ng-change="defineUserType('tutor')" name="UserTypeLanding" class="radioRegHeader" value="tutor" />
                <i></i>
                Tutor
            </label>
        </div>
        
    </div>
        <div class="form-group-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon">
                        <span class="common-sprite-opt contact-name"></span>

                    </span>
                    <input id="Name" name="Name" ng-model="name"class="form-control input-lg  validate[required,custom[onlyLetterSp]]" type="text" placeholder="Name"
                            data-errormessage-value-missing="Please enter your name.">
                </div>
            </div>
        </div>
        <div class="form-group-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon input-mail-block">
                        <span class="common-sprite-opt contact-details-phone"></span>
                    </span>
                    <input type="tel" id="Mobile" name="Mobile" ng-model="mobile" class="form-control lp-phone-number input-lg  validate[required,custom[phone],funcCall[validateIndianMobileNumber]]" placeholder="Mobile Number"
                            data-errormessage-value-missing="Please enter mobile number.">

                </div>
                <p class="small text-muted">We don't misuse your phone number </p>
            </div>
        </div>
        <div class="form-group-lp" id="tuition-need-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon input-pincode-block">
                        <span class="common-sprite-opt course-icon"></span>
                    </span>
                    <input id="Email" name="Email" ng-model="email" class="form-control input-lg validate[custom[email]]" type="email" placeholder="Enter Email"
                           data-errormessage-value-missing="Please enter your email.">
                </div>
                <p class="small text-muted">We don't misuse your email.</p>
            </div>
        </div>
        
        <div class="form-group-lp" id="tuition-need-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon input-pincode-block">
                        <span class="common-sprite-opt course-icon"></span>
                    </span>
                    <input id="password" name="password" ng-model="password" class="form-control input-lg validate[custom[email]]" type="password" placeholder="Enter password"
                           data-errormessage-value-missing="Please enter your password">
                </div>
                <p class="small text-muted">We don't misuse your email.</p>
            </div>
        </div>
        <div class="form-group-lp" id="tuition-need-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon input-pincode-block">
                        <span class="common-sprite-opt course-icon"></span>
                    </span>
                    <input id="Course" name="Course" ng-model="course" class="form-control input-lg  validate[required]" type="text" placeholder="Enter Course"
                            data-errormessage-value-missing="Please enter course. Eg. Class I CBSE or Class X or B.Tech etc.">
                </div>
                <p class="small text-muted">eg. Class I CBSE or Class X or B.Tech etc.</p>
            </div>
        </div>
        <div class="form-group-lp" id="subject-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon input-pincode-block">
                        <span class="common-sprite-opt subject-icon"></span>
                    </span>
                    <input id="Subject" name="Subject" ng-model="subject"class="form-control input-lg  validate[required]" type="text" placeholder="Enter Subjects"
                            data-errormessage-value-missing="Please enter subjects. Eg. maths, physics or all subjects etc.">
                </div>
                <p class="small text-muted">eg. maths, physics or all subjects etc.</p>
            </div>
        </div>
        <div class="form-group-lp">
            <div class="">
                <div id="submitButtonContainer" class="text-center">
                    <button id="btn-signup-lp" type="submit" class="btn btn-info btn-orange btn-lg">Get Free Demo Class</button>
                    <img id="imgLoading" style="display:none;" src="https://static.hometutorsite.com/content/images/preloaders/preloader.gif" />                    
                </div>
            </div>
        </div>
        <p class="text-center small">By signing up you agree to our <a href="/home/termsandconditions">Terms and Conditions</a></p><br />
        <p class="text-center medium">Already a member? <a href="/account/login">Login</a></p>
</form>

<form action="/landing/looking-for-home-tutors/" class="form-validation" ng-show="secondData"data-ajax="true" data-ajax-begin="LandingAjaxBegin" data-ajax-method="POST" data-ajax-mode="replace" data-ajax-success="TrackGoogleAdwordsConversions" data-ajax-update="#rightSideForm" id="landing-page-form" method="post">    <input type="hidden" id="online" name="online" value="false" />
    <div class="get-in-touch">
        <div class="form-control-lp">
            I am a &nbsp;
            <label class="rad studentStyle">
                <input type="radio" id="radioStudentLanding" name="UserTypeLanding" class="radioRegHeader" value="student" checked />
                <i></i>
                Student/Parent &nbsp;
            </label>
            <label class="rad tutorStyle">
                <input type="radio" id="radioTutorLanding" name="UserTypeLanding" class="radioRegHeader" value="tutor" />
                <i></i>
                Tutor
            </label>
        </div>
        
    </div>
        <div class="form-group-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon">
                        <span class="common-sprite-opt contact-name"></span>

                    </span>
                    <input id="Name" name="Name" class="form-control input-lg  validate[required,custom[onlyLetterSp]]" type="text" placeholder="Name"
                            data-errormessage-value-missing="Please enter your name.">
                </div>
            </div>
        </div>
        <div class="form-group-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon input-mail-block">
                        <span class="common-sprite-opt contact-details-phone"></span>
                    </span>
                    <input type="tel" id="Mobile" name="Mobile" class="form-control lp-phone-number input-lg  validate[required,custom[phone],funcCall[validateIndianMobileNumber]]" placeholder="Mobile Number"
                            data-errormessage-value-missing="Please enter mobile number.">

                </div>
                <p class="small text-muted">We don't misuse your phone number </p>
            </div>
        </div>
        <div class="form-group-lp" id="tuition-need-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon input-pincode-block">
                        <span class="common-sprite-opt course-icon"></span>
                    </span>
                    <input id="Email" name="Email" class="form-control input-lg validate[custom[email]]" type="email" placeholder="Enter Email"
                           data-errormessage-value-missing="Please enter your email.">
                </div>
                <p class="small text-muted">We don't misuse your email.</p>
            </div>
        </div>
        <div class="form-group-lp" id="tuition-need-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon input-pincode-block">
                        <span class="common-sprite-opt course-icon"></span>
                    </span>
                    <input id="Course" name="Course" class="form-control input-lg  validate[required]" type="text" placeholder="Enter Course"
                            data-errormessage-value-missing="Please enter course. Eg. Class I CBSE or Class X or B.Tech etc.">
                </div>
                <p class="small text-muted">eg. Class I CBSE or Class X or B.Tech etc.</p>
            </div>
        </div>
        <div class="form-group-lp" id="subject-lp">
            <div class="">
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon input-pincode-block">
                        <span class="common-sprite-opt subject-icon"></span>
                    </span>
                    <input id="Subject" name="Subject" class="form-control input-lg  validate[required]" type="text" placeholder="Enter Subjects"
                            data-errormessage-value-missing="Please enter subjects. Eg. maths, physics or all subjects etc.">
                </div>
                <p class="small text-muted">eg. maths, physics or all subjects etc.</p>
            </div>
        </div>
        <div class="form-group-lp">
            <div class="">
                <div id="submitButtonContainer" class="text-center">
                    <button id="btn-signup-lp" type="submit" class="btn btn-info btn-orange btn-lg">Get Free Demo Class</button>
                    <img id="imgLoading" style="display:none;" src="https://static.hometutorsite.com/content/images/preloaders/preloader.gif" />                    
                </div>
            </div>
        </div>
        <p class="text-center small">By signing up you agree to our <a href="/home/termsandconditions">Terms and Conditions</a></p><br />
        <p class="text-center medium">Already a member? <a href="/account/login">Login</a></p>
</form>


                            </div>
                        </div>
                    </div>

                    <div class="col-md-7 col-md-pull-5">
                        <div id="students-info-lp" class="text-center">
                            <h2>Find Best Home Tutors Near You.</h2>

                            <img src="https://static.hometutorsite.com/content/images/landing/student-reg-steps.jpg" class="img-responsive" />
                            <br />
                            <div class="text-center"><img src="https://static.hometutorsite.com/content/images/landing/tuition-image.jpg" class="img-responsive" /></div>
                            <br />
                            <p class="lp-lead text-center lp-lead1">
                                Home Tuition is the #1 secret of <b>ACADEMIC EXCELLENCE</b>

                            </p>
                        </div>

                        

                        <br />


                    </div>
                </div>
                <div class="row">

                    <div class="col-md-12 lp-testimonial">
                        <h3>Testimonials</h3>

                        <div id="students-testimonials-lp">
                            <div class="col-md-4">
                                <div class="home-testimonial-block">

                                    <div class="pull-left user-pic">
                                        <img src="https://static.hometutorsite.com/content/images/common-sm/transparent.png" class="img-responsive home-common-images-sprite1 home-testimonial-student2 img-circle img-thumbnail" alt="Home Tutor Site testimonial" width="1" height="1" />

                                    </div>
                                    <div class="testimonial-content">
                                        <p>
                                            <em>"Great website! We found a caring and humble tutor for our daughter. She likes studying with the tutor."</em>
                                        </p>
                                        <p class="by-name">— Gayathri Parents</p>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4">
                                <div class="home-testimonial-block">

                                    <div class="pull-left user-pic">
                                        <img src="https://static.hometutorsite.com/content/images/common-sm/transparent.png" class="img-responsive home-common-images-sprite1 home-testimonial-student3 img-circle img-thumbnail" alt="Home Tutor Site testimonial" width="1" height="1" />
                                    </div>
                                    <div class="testimonial-content">
                                        <p>
                                            <em>"I used to struggle with maths. After getting a home tutor I am doing maths very easily."</em>
                                        </p>
                                        <p class="by-name">— Sagar</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">

                                <div class="home-testimonial-block">
                                    <div class="pull-left user-pic">
                                        <img src="https://static.hometutorsite.com/content/images/common-sm/transparent.png" class="img-responsive home-common-images-sprite1 home-testimonial-student4 img-circle img-thumbnail" alt="Home Tutor Site testimonial" width="1" height="1" />
                                    </div>
                                    <div class="testimonial-content">
                                        <p>
                                            <em>"After posting my learning requirement, I got a good tutor within a day. Excellent Service!"</em>
                                        </p>
                                        <p class="by-name">— Munni</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="tutors-testimonials-lp">
                            <div class="col-md-4">
                                <div class="home-testimonial-block">
                                    <div class="pull-left user-pic">
                                        <img src="https://static.hometutorsite.com/content/images/common-sm/transparent.png" class="img-responsive home-common-images-sprite1 home-testimonial-tutor1 img-circle img-thumbnail" alt="Home Tutor Site testimonial" width="1" height="1" />
                                    </div>
                                    <div class="testimonial-content">
                                        <p>
                                            <em>"Its a good channel for getting part time tuition jobs. I started earning on my own!"</em>
                                        </p>
                                        <p class="by-name">— Bhavani</p>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4">
                                <div class="home-testimonial-block">
                                    <div class="pull-left user-pic">
                                        <img src="https://static.hometutorsite.com/content/images/common-sm/transparent.png" class="img-responsive home-common-images-sprite1 home-testimonial-tutor2 img-circle img-thumbnail" alt="Home Tutor Site testimonial" width="1" height="1" />
                                    </div>
                                    <div class="testimonial-content">
                                        <p>
                                            <em>"This website is doing a great service in helping students and tutors find each other!"</em>
                                        </p>
                                        <p class="by-name">— Trinath</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">

                                <div class="home-testimonial-block">

                                    <div class="pull-left user-pic">
                                        <img src="https://static.hometutorsite.com/content/images/common-sm/transparent.png" class="img-responsive home-common-images-sprite1 home-testimonial-tutor3 img-circle img-thumbnail" alt="Home Tutor Site testimonial" width="1" height="1" />
                                    </div>
                                    <div class="testimonial-content">
                                        <p>
                                            <em>"Yahoooo! I earned my first salary even before completing my M.Pharmacy. Thanks to hometutorsite.com!!!"</em>
                                        </p>
                                        <p class="by-name">—Chiru</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
