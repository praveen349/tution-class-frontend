<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section id="headerApp" ng-controller="headerCtrl">
		<div id="header" class="navbar navbar-inverse navbar-fixed-top"
			role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse navbar-left">
					<ul class="nav navbar-nav">
						<li><a href="/" class="nav-home"> <span
								class="common-sm-sprite home-nav"></span> Home
						</a></li>

						<li><a href="/home/howitworks/" class="nav-home"> How It
								Works </a></li>

						<li><a href="/landing/looking-for-home-tutors/"
							class="nav-home"> Request A Tutor </a></li>
						<li><a href="/landing/looking-for-home-tutors/?user=tutor"
							class="nav-home"> Join As Tutor </a></li>

						<li><a href="/home/pricing/">Pricing</a></li>

						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle" data-hover="dropdown" id="nav-bar-more">More<b
								class="caret"></b></a>
							<div class="dropdown-menu dropdown-mega-menu" role="menu"
								aria-labelledby="nav-bar-more">
								<div class="mega-menu-block nav-vertical">
									<ul class="more-menu">


										<li><a href="/home/findprofile/">Find Tutor By Id</a></li>
										<li><a href="/home/findtuition/">Find Tuition By Id</a></li>
										<li><a href="/home/faqs/">FAQs</a></li>
										<li><a href="/home/moneybackguarantee/">100% Money
												Back Guarantee</a></li>
										<li><a href="/blog/">Blog</a></li>
										<li><a href="/home/testimonials/">Testimonials</a></li>
										<li><a href="/home/about/">Our Team</a></li>
										<li><a href="${pageContext.request.contextPath}/contact">Contact
												Us</a></li>


									</ul>
								</div>
							</div></li>
					</ul>
				</div>
				
				
				<!--/.nav-collapse -->
				<div class="logo-sm visible-xs">
					<a href="/"> <span class="logo"> <img
							src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
							class="img-responsive home-sprite home-logo-image"
							alt="Home Tutor Site logo" width="1" height="1" />
					</span>


						<p>Home Tutor Site</p>


					</a>
				</div>


				<div class="header-right-pane">

					<div class="header-right-pane1">
						<div class="intro-block">
							<span class="hidden-xs"> <a href="javascript:void(0)"
								onclick="startIntro()"> <span class="home-sprite intro-icon"
									title="Click here to get help.">?</span>
							</a>
							</span>
						</div>

						<div class="country-flag">

							<input type="text" id="country" name="country"
								class="form-control india-flag select-country" /> <input
								type="hidden" id="country_code" /> <input type="hidden"
								id="country_value" value="in" />
						</div>


					</div>




					<div class="login-signup-block">
						<div class="login-signup-lg hide-480">
							<div class="top-login-reg-btn">

								<div class="dropdown epropagation-block">
									<button id="login-btn" type="button"
										class="btn btn-login dropdown-toggle" data-toggle="dropdown">
										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive common-sm-sprite user-login-icon"
											alt="Home Tutor Site login" width="1" height="1" /><span
											class="hide-480">Log in</span>
									</button>
									<div
										class="dropdown-menu epropagation-content login-dropdown-menu">
										<form action="/account/login/" class="form-validation"
											id="login-form-popup" method="post" name="login-form-popup">
											<input id="returnUrl" name="returnUrl" type="hidden"
												value="/" /><input name="__RequestVerificationToken"
												type="hidden"
												value="Qys8ESFdF42p9ci0QXGvBnqEAGNmcLMD6rPmFGUMQjaqmPyb9Q_437EzEkut_roQRxny3jaQ9cAnU6sYBdCbj16nwO8XL3MGUBoAgBQ3vAg1" />
											<input id="LoginEmail" type="text" name="LoginEmail"
												size="30"
												class="form-control validate[required] form-control-border"
												placeholder="Email or Mobile Number"
												data-errormessage-value-missing="Email or Mobile Number is required" />
											<input id="LoginPassword" type="password"
												name="LoginPassword" size="30"
												class="form-control validate[required] form-control-border"
												placeholder="Password"
												data-errormessage-value-missing="Password is required" /> <input
												id="LoginRememberMe" type="checkbox" name="LoginRememberMe"
												value="1" checked /> <label class="string optional"
												for="LoginRememberMe"> Remember me </label> <a
												class="pull-right" href="/account/forgotpassword">Forgot
												password?</a>
											<div class="height-10"></div>
											<input class="btn btn-primary btn-block btn-blue"
												type="submit" name="commit" value="Log in" />
										</form>
									</div>
								</div>
								<div class="dropdown epropagation-block">
									<button id="sign-up-btn" type="button"
										class="btn btn-sign-up dropdown-toggle" data-toggle="dropdown">
										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive common-sm-sprite user-reg-icon"
											alt="Home Tutor Site registration" width="1" height="1" /><span
											class="hide-480">Sign Up</span>
									</button>
									<div class="dropdown-menu epropagation-content reg-dropdown">





										<div style="text-align: center;">
											<div class="usersignupbg"
												style="background-color: #f6f6f6; padding: 10px; border: solid 1px #e8e8e8;">
												<p class="user-q">Are you a student / parent</p>
												<div class="home-user-heading" style="margin-bottom: 0px;">
													<h3
														style="font-size: 16px; color: #325d7d; margin-bottom: 12px;">Looking
														for Home Tutors?</h3>
												</div>
												<a href="/landing/looking-for-home-tutors/" class="nav-home">
													<input
													class="btn btn-primary btn-block btn-blue btn-orange"
													type="submit" name="commit"
													value="POST TUITION NEEDS FOR FREE" />
												</a>
											</div>
											<div class="height-10"></div>
											<div class="usersignup-bg"
												style="background-color: #f6f6f6; padding: 10px; border: solid 1px #e8e8e8;">
												<p class="user-q">Are you a Home Tutor</p>
												<div class="home-user-heading" style="margin-bottom: 0px;">
													<h3
														style="font-size: 16px; color: #325d7d; line-height: 20px; margin-bottom: 12px;">Looking
														for Students?</h3>
												</div>
												<a href="/landing/looking-for-home-tutors/?user=tutor"
													class="nav-home"> <input
													class="btn btn-primary btn-block btn-blue btn-orange"
													type="submit" name="commit" value="POST PROFILE FOR FREE" />
												</a>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="login-signup-xs visible-480">
							<div class="login-signup-dropdown">
								<div class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">
										<span class="common-sm-sprite user-login-reg"></span>
									</a>
									<ul class="dropdown-menu">

										<li><a href="/account/login/" class="nav-home"> <img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive common-sm-sprite user-login-icon"
												alt="Home Tutor Site login" width="1" height="1" /> Login
										</a></li>
										<li><a
											href="https://www.hometutorsite.com/landing/looking-for-home-tutors/"
											class="nav-home"> <img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive common-sm-sprite user-reg-icon"
												alt="Home Tutor Site registration" width="1" height="1" />
												Sign Up
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>



			</div>
		</div>









		<div>
			<div class="starter-template ">
				<div class="container-fluid main-image1">
					<div class="social-buttons-dropdown btn-group visible-xs ">
						<div class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"
								id="social-buttons-dropdown">
								<div class="share-icon-mobile">
									<span class="common-sm-sprite share-icon-black"></span>
								</div>
							</a>
							<ul class="dropdown-menu social-interest-btn"
								aria-labelledby="social-buttons-dropdown">
								<li>
									<div class="fb">
										<a
											href="https://www.facebook.com/sharer/sharer.php?u=https://www.hometutorsite.com"
											target="_blank"><img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive common-sm-sprite fb-share"
											alt="Home Tutor Site facebook share" width="1" height="1" />
											Share</a>
										<div class="social-count">
											<span>10</span>
										</div>
									</div>
								</li>
								<li>
									<div class="google">
										<a
											href="https://plus.google.com/share?url=https://www.hometutorsite.com"
											target="_blank"><span>G+1</span></a>
										<div class="social-count">
											<span>10</span>
										</div>
									</div>
								</li>
								<li>
									<div class="twitter">
										<a
											href="https://twitter.com/intent/tweet?url=https://www.hometutorsite.com/?text=TEXT&amp;via=YOURTWITTERACCOUNTNAME"
											target="_blank"><img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive common-sm-sprite twitter-tweet"
											alt="Home Tutor Site facebook share" width="1" height="1" />
											Tweet</a>
										<div class="social-count">
											<span>10</span>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>







				</div>















			</div>
		</div>


</section>