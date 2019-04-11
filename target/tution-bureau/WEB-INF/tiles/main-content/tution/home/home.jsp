<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section id="homeApp" ng-controller="homeCtrl">
<div id="wrap">
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
				<div class="container">
					<div class="col-md-12 hidden-xs">
						<div class="row">
							<div class="social-interest-btn desktop">
								<div class="hts-whatsapp-top-block">
									<div>
										<img class="common-sm-sprite contact-whatsappicon" />+91
										9801303935
									</div>
								</div>
							</div>
							<div class="hts-contact-top-block">
								<div>
									<img class="common-sm-sprite contact-mobileicon" />+91
									8367682244/55/66
								</div>
							</div>
						</div>
					</div>
					<div class="row ">
						<div class="logo-home">
							<a href="/" class="home-sprite-none"> <span class="logo">
									<img
									src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
									class="img-responsive home-sprite home-logo-image"
									alt="Home Tutor Site logo" width="1" height="1" />
							</span>
								<h1 class="logo-title">
									Home Tutor Site <span class="logo-caption">Learn &
										Achieve!!</span>
								</h1>
							</a>
						</div>
					</div>
					
				</div>

				<div class="container" id="mrcb">
					<div class="row">
						<div class="full-width full-width-lp full-width-back">
							<div class="right-common-content">
								<div class="row">
									<div class="col-md-6 student-back">
										<div id="students-info-lp" class="text-center">
											<h2 class="captionColor captionColor1">Looking for Home
												Tutors?</h2>
											<img
												src="https://static.hometutorsite.com/content/images/landing/student-reg-steps.jpg"
												width="450" class="img-responsive" /><br />
											<div class="home-free-btn home-free-btn1">
												<div class="row ">
													<div class="home-btn-reg-free intro-posttuition btn-margin">
														<a href="/landing/looking-for-home-tutors/"
															class="btn btn-lg btn-info btn-blue btn-border">Post
															Tuition Needs for Free </a>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="col-md-6 tutor-back">
										<div id="students-info-lp" class="text-center">
											<h2 class="captionColor captionColor1">Looking for
												Tuition jobs?</h2>
											<img
												src="https://static.hometutorsite.com/content/images/landing/tutor-reg-steps.jpg"
												width="450" class="img-responsive" /><br />
											<div class="home-free-btn intro-postprofile home-free-btn1">
												<div class="row ">
													<div class="home-btn-reg-free btn-margin">
														<a href="/landing/looking-for-home-tutors/?user=tutor"
															class="btn btn-lg btn-info btn-blue btn-border">Join
															As Tutor for Free </a>
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


				<div class="container">
					<div id="" class="be-modules clearfix">
						<div id="" class="be-flights">

							<form action="/" id="homeSearchForm" method="post">
								<input name="__RequestVerificationToken" type="hidden"
									value="mXwiOrvfHdgg2-l5WT_v7HFZNpH4F8V4tUYmDvBn7C0-wpbE4SpMx_AJhUACwfKoyYzEqNvABWwUhsWPRSow_2LQEIjMM70-LnJx9uLzHmQ1" />
								<div class="journey-details clearfix">

									<div class="city-search">

										<div id="CitySearchContainer" class="pax-details ddn-parent">


											<div class="city-list">
												<div id="cityDropdownDiv" class="btn-group dropdown">
													<a id="cityDropdownDivButton"
														class="btn dropdown-toggle city-list-ddl city-list-ddl3"
														data-toggle="dropdown" href="#"> <span id="citySpan">Select
															City</span> <span class="caret"></span> <input type=hidden
														name="selectedCityName" id="selectedCityName">
													</a>
													<div id="cityDropdown"
														class="dropdown-menu1 dropdown-menu mega-dropdown-content">
														<div class="row input-browse-block-header">

															<div class="col-md-7 input-browse-type">
																<h4>Select City (or) Type City Name</h4>

															</div>
															<div class="col-md-5 input-browse-enter-type">

																<div class="dropdown-content-header">
																	<div class="dropdown-content-left">

																		<div class="input-group custom-search-form">
																			<input id="citySearch" name="citySearch"
																				class="typeahead form-control"
																				placeholder="enter city"> <input type=hidden
																				name="searchCity" id="searchCity">
																		</div>

																		<div id="citySuggestion"></div>
																		



																	</div>



																</div>
															</div>

														</div>
														<hr />

														<div class="row input-browse-content">
															<div class="col-md-4 col-sm-6">
																<ul class="city-select-list">
																	<li><a href="#">Agra</a></li>
																	<li><a href="#">Ahmedabad</a></li>
																	<li><a href="#">Bangalore</a></li>
																	<li><a href="#">Bhopal</a></li>
																	<li><a href="#">Chennai</a></li>
																	<li><a href="#">Delhi</a></li>
																	<li><a href="#">Faridabad</a></li>
																	<li><a href="#">Ghaziabad</a></li>
																	<li><a href="#">Hyderabad</a></li>
																	<li><a href="#">Indore</a></li>
																</ul>
															</div>

															<div class="col-md-4 col-sm-6">
																<ul class="city-select-list">
																	<li><a href="#">Jaipur</a></li>
																	<li><a href="#">Kalyan</a></li>
																	<li><a href="#">Kanpur</a></li>
																	<li><a href="#">Kolkata</a></li>
																	<li><a href="#">Lucknow</a></li>
																	<li><a href="#">Ludhiana</a></li>
																	<li><a href="#">Meerut</a></li>
																	<li><a href="#">Mumbai</a></li>
																	<li><a href="#">Nagpur</a></li>
																	<li><a href="#">Nashik</a></li>
																</ul>
															</div>

															<div class="col-md-4 col-sm-6">
																<ul class="city-select-list">
																	<li><a href="#">Patna</a></li>
																	<li><a href="#">Pune</a></li>
																	<li><a href="#">Rajkot</a></li>
																	<li><a href="#">Srinagar</a></li>
																	<li><a href="#">Surat</a></li>
																	<li><a href="#">Thane</a></li>
																	<li><a href="#">Vadodara</a></li>
																	<li><a href="#">Varanasi</a></li>
																	<li><a href="#">Vasai Virar</a></li>
																	<li><a href="#">Visakhapatnam</a></li>
																</ul>
															</div>
														</div>



														<div class="note">

															<p>
																<b>Note :</b> If you can't find city in the list, type
																the city name in the top right corner box.
															</p>

														</div>

													</div>
												</div>
											</div>

										</div>

									</div>
									<div class="tuition-type">
										<div id="" class="pax-details ddn-parent">
											<select name="searchTypeDropdown" id="searchTypeDropdown"
												class="form-control ui-autocomplete-input form-control-front"
												autocomplete="off">
												<option value="tutors" selected="">Tutors</option>
												<option value="tuitions">Tuitions</option>
											</select>
										</div>
									</div>
									<div class="search-type">
										<div id="searchTypeDropdown" class="pax-details ddn-parent">
											<input class="form-control ui-autocomplete-input"
												name="SearchText1" id="SearchTextHome"
												placeholder="Enter Course or Subject Keywords to Search"
												type="text" autocomplete="off"> <input type="hidden"
												id="course" name="course" value="">
										</div>
									</div>

									<div class="ripple-parent">
										<input data-role="none" type="submit" value="Search"
											class="js_ripple search-btn"
											onclick="hometuitionSearch(); event.stopPropagation(); return false;">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

				<div class="container views">
					<div class="row">
						<div class="col-md-4 col-sm-4 page-views-back">
							<h2 class="page-views">
								All India<br />
								<span class="page-views1">Coverage</span>
							</h2>
						</div>
						<div class="col-md-4 col-sm-4 page-views-back">
							<h2 class="home-tutors">
								3,00,000 +<br />
								<span class="home-tutors1">Home Tutors</span>
							</h2>
						</div>
						<div class="col-md-4 col-sm-4 page-views-back">
							<h2 class="tuition-jobs">
								1,75,000 +<br />
								<span class="tuition-jobs1">Tuition Jobs</span>
							</h2>
						</div>
					</div>
				</div>
			</div>

			<div class="height-10 hide-320"></div>
			<div class="container-fluid">
				<div class="container">
					<div class="row" id="drcb">
						<div class="full-width full-width-lp full-width-back">
							<div class="right-common-content">
								<div class="row">
									<div class="col-md-6 student-back">
										<div id="students-info-lp" class="text-center">
											<h2 class="captionColor">Looking for Home Tutors?</h2>
											<img
												src="https://static.hometutorsite.com/content/images/landing/student-reg-steps.jpg"
												width="450" class="img-responsive" /><br />
											<div class="home-free-btn">
												<div class="row ">
													<div class="home-btn-reg-free intro-posttuition btn-margin">
														<a href="/landing/looking-for-home-tutors/"
															class="btn btn-lg btn-info btn-blue">Post Tuition
															Needs for Free <img
															src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
															class="img-responsive common-sm-sprite home-registration-arrow"
															alt="Home Tutor Site registration" width="1" height="1" />
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="col-md-6 tutor-back">
										<div id="students-info-lp" class="text-center">
											<h2 class="captionColor">Looking for Tuition Jobs?</h2>
											<img
												src="https://static.hometutorsite.com/content/images/landing/tutor-reg-steps.jpg"
												width="450" class="img-responsive" /><br />
											<div class="home-free-btn intro-postprofile">
												<div class="row ">
													<div class="home-btn-reg-free btn-margin">
														<a href="/landing/looking-for-home-tutors/?user=tutor"
															class="btn btn-lg btn-info btn-blue">Join As Tutor
															for Free <img
															src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
															class="img-responsive common-sm-sprite home-registration-arrow"
															alt="Home Tutor Site registration" width="1" height="1" />
														</a>
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
			</div>

			<div class="height-10 hide-320"></div>

			<div class="container-fluid home-testimonial-info">
				<div class="row">
					<div class="container">
						<div class="row home-testimonial-row">
							<div class="col-md-12">
								<div class="row">

									<div class="home-hiw-main-heading">
										<div class="divider-lines"></div>
										<h3>Why Home Tuition?</h3>
									</div>

								</div>
							</div>
							<div class="col-md-6">
								<h3>Students/Parents</h3>
								<hr />
								<div class="home-testimonial-block home-testimonial-block1">
									<div class="pull-left user-pic user-pic1">


										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions why-home-tuitions-1"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em>Home Tuition is <b>#1 Secret of Success.</b>Its a
												well known fact that home tuition helps students to succeed.
												Home tutors provide personalized attention.
											</em>
										</p>

									</div>
								</div>

								<div class="home-testimonial-block home-testimonial-block1">
									<div class="pull-left user-pic user-pic1">


										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions why-home-tuitions-2"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em>Expert one-to-one guidance from home tutors helps
												students. Here student gets 100% attention and can ask
												doubts without any hesitation. </em>
										</p>
									</div>
								</div>

								<div class="home-testimonial-block home-testimonial-block1">
									<div class="pull-left user-pic user-pic1">


										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions why-home-tuitions-3"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em>Guided students learn & achieve <b>Better
													Grades!</b> Numerous students have benefitted from expert
												guidance from home tutors.
											</em>
										</p>
									</div>
								</div>

							</div>
							<div class="col-md-6">
								<h3>Tutors</h3>
								<hr />
								<div class="home-testimonial-block home-testimonial-block1">
									<div class="pull-left user-pic user-pic1">


										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions why-home-tuitions-4"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em><b>Be your own Boss!!!</b> You concentrate on
												teaching students as home tutor and we help you find home
												tuition needs (part time teaching jobs) posted by students.
											</em>
										</p>
									</div>
								</div>

								<div class="home-testimonial-block home-testimonial-block1">
									<div class="pull-left user-pic user-pic1">


										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions why-home-tuitions-5"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em>Home Tuition is <b>Flexible</b> and <b>Rewarding.</b>
												Teach as home tutor at your convenient timings. Few hours of
												home tutoring a day can help you earn decent income.
											</em>
										</p>
									</div>
								</div>

								<div class="home-testimonial-block home-testimonial-block1">
									<div class="pull-left user-pic user-pic1">


										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions why-home-tuitions-6"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em>Home tutoring is the best part time job option.
												Thousands of parents are offering part time teaching jobs
												for home tutors. Work part time and earn <b>additional
													income!</b>
											</em>
										</p>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="container-fluid home-testimonial-info"
				style="background-color: #fff;">
				<div class="row">
					<div class="container">
						<div class="row home-testimonial-row">
							<div class="col-md-12">
								<div class="row">

									<div class="home-hiw-main-heading">
										<div class="divider-lines"></div>
										<h3>How It Works</h3>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<h3>Students/Parents</h3>
								<hr />
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">


										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions how-it-works-1"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em> <b> Tell Us Your Tuition Needs:</b> Just fill few
												details about your home tuition needs and we will show your
												requirements to all our tutors.
											</em>
										</p>
									</div>
								</div>

								<div class="home-testimonial-block">
									<div class="pull-left user-pic">

										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions how-it-works-2"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em><b> Get Free Demo:</b> Interested home tutors will
												apply for your home tuition and we will arrange a free demo
												class by our home tutor.</em>
										</p>
									</div>
								</div>
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">

										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions how-it-works-3"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em><b>Confirm If You Like: </b> After the demo class,
												evaluate the teacher and if you are satisfied with tutors
												teaching abilities then confirm him.</em>
										</p>
									</div>
								</div>
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">

										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions how-it-works-4"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em> <b>Go Premium:</b> Need help? Avail the best in
												class service from our customer service executives for just
												Rs 500.
											</em>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<h3>Tutors</h3>
								<hr />
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">

										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions how-it-works-1"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em><b> Create Profile:</b> Advertise about yourself by
												creating your profile. Profiles with more details gets
												maximum attention from our students and parents.</em>
										</p>
									</div>
								</div>
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">

										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions how-it-works-2"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em><b>Get Students: </b> You can find students by
												searching tuition needs posted on our website which matches
												your profile. Apply tuitions relevant to you.</em>
										</p>
									</div>
								</div>
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">

										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions how-it-works-3"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em><b> Start Earning:</b> Students/Parents who posted
												the tuition needs you applied will request a demo class.
												Give your best in the demo class to get the tuition
												confirmed.</em>
										</p>
									</div>
								</div>
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">

										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive why-home-tuitions how-it-works-4"
											alt="Home Tutor Site testimonial" width="1" height="1">
									</div>
									<div class="testimonial-content">
										<p>
											<em><b>Go Premium: </b> Need help? Avail the best in
												class service from our customer service executives for just
												Rs 500.</em>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>



			<div class="container-fluid home-testimonial-info">
				<div class="row">
					<div class="container">
						<div class="row home-testimonial-row">
							<div class="col-md-12">
								<div class="row">

									<div class="home-hiw-main-heading">
										<div class="divider-lines"></div>
										<h3>Our Users Say</h3>
									</div>

								</div>
							</div>
							<div class="col-md-6">
								<h3>Students/Parents</h3>
								<hr />
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">
										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive home-common-images-sprite1 home-testimonial-student2 img-circle img-thumbnail"
											alt="Home Tutor Site testimonial" width="1" height="1" />

									</div>
									<div class="testimonial-content">
										<p>
											<em>Great website! We found a caring and humble home
												tutor for our daughter. She likes studying with the home
												tutor.</em>
										</p>
										<p class="by-name">— Gayathri Parents</p>
									</div>
								</div>

								<div class="home-testimonial-block">
									<div class="pull-left user-pic">
										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive home-common-images-sprite1 home-testimonial-student3 img-circle img-thumbnail"
											alt="Home Tutor Site testimonial" width="1" height="1" />
									</div>
									<div class="testimonial-content">
										<p>
											<em>I used to struggle with maths. After getting a home
												tutor I am doing maths very easily and topped my class.</em>
										</p>
										<p class="by-name">— Balu</p>
									</div>
								</div>
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">
										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive home-common-images-sprite1 home-testimonial-student4 img-circle img-thumbnail"
											alt="Home Tutor Site testimonial" width="1" height="1" />
									</div>
									<div class="testimonial-content">
										<p>
											<em>Earlier I am too worried about my kids addiction to
												Mobile & TV. Now when home tutor comes home to teach they
												study perfectly!</em>
										</p>
										<p class="by-name">— Munni</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<h3>Tutors</h3>
								<hr />
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">
										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive home-common-images-sprite1 home-testimonial-tutor1 img-circle img-thumbnail"
											alt="Home Tutor Site testimonial" width="1" height="1" />
									</div>
									<div class="testimonial-content">
										<p>
											<em>Teaching is my passion and working as a home tutor
												supplements my income as a school teacher. Awesome home
												tutoring service!</em>
										</p>
										<p class="by-name">— Bhavani</p>
									</div>
								</div>
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">
										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive home-common-images-sprite1 home-testimonial-tutor2 img-circle img-thumbnail"
											alt="Home Tutor Site testimonial" width="1" height="1" />
									</div>
									<div class="testimonial-content">
										<p>
											<em>Taking up home tuitions as a home tutor boosts my
												income I earn from college as a lecturer. I liked your
												ability to find students to teach near my home.</em>
										</p>
										<p class="by-name">— Trinath</p>
									</div>
								</div>
								<div class="home-testimonial-block">
									<div class="pull-left user-pic">
										<img
											src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
											class="img-responsive home-common-images-sprite1 home-testimonial-tutor3 img-circle img-thumbnail"
											alt="Home Tutor Site testimonial" width="1" height="1" />
									</div>
									<div class="testimonial-content">
										<p>
											<em>Yahoooo! I earned my first salary as home tutor even
												before completing my M.Pharmacy. Thanks to
												HomeTutorSite.com!!!</em>
										</p>
										<p class="by-name">—Chiru</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="container-fluid home-testimonial-info"
					style="background-color: #fff;">
					<div class="row">
						<div class="container">
							<div class="row home-testimonial-row">
								<div class="col-md-12">
									<div class="row">

										<div class="home-hiw-main-heading">
											<div class="divider-lines"></div>
											<h3>Why HomeTutorSite.com?</h3>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<h3>Local Tuition Agencies</h3>
									<hr />
									<div class="home-testimonial-block">
										<div class="pull-left user-pic">


											<img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive why-home-tuitions how-it-works-1"
												alt="Home Tutor Site testimonial" width="1" height="1">
										</div>
										<div class="testimonial-content">
											<p>
												<em> <b> High Charges:</b> They charge 50% of first
													month tuition fee. Some agencies charge 20% to 30% of
													tuition fee every month.
												</em>
											</p>
										</div>
									</div>

									<div class="home-testimonial-block">
										<div class="pull-left user-pic">

											<img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive why-home-tuitions how-it-works-2"
												alt="Home Tutor Site testimonial" width="1" height="1">
										</div>
										<div class="testimonial-content">
											<p>
												<em><b>Slow & Unreliable:</b> They have limited number
													of tutors/tuitions hence the process is slow. Also tutors
													need to pay commission to the agency. So tutors usually
													discontinue tuitions. </em>
											</p>
										</div>
									</div>
									<div class="home-testimonial-block">
										<div class="pull-left user-pic">

											<img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive why-home-tuitions how-it-works-3"
												alt="Home Tutor Site testimonial" width="1" height="1">
										</div>
										<div class="testimonial-content">
											<p>
												<em><b>Limited Customer Service: </b> Often handled by
													a single person and with limited communication channels. </em>
											</p>
										</div>
									</div>
									<div class="home-testimonial-block">
										<div class="pull-left user-pic">

											<img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive why-home-tuitions how-it-works-4"
												alt="Home Tutor Site testimonial" width="1" height="1">
										</div>
										<div class="testimonial-content">
											<p>
												<em> <b>Refund Policy:</b> They do not entertain any
													refunds.
												</em>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<h3>HomeTutorSite</h3>
									<hr />
									<div class="home-testimonial-block">
										<div class="pull-left user-pic">

											<img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive why-home-tuitions how-it-works-1"
												alt="Home Tutor Site testimonial" width="1" height="1">
										</div>
										<div class="testimonial-content">
											<p>
												<em> <b>Low Charges:</b>We charge just one time Rs 500
													+ GST. We do not take any commission from monthly tuition
													fee.
												</em>
											</p>
										</div>
									</div>
									<div class="home-testimonial-block">
										<div class="pull-left user-pic">

											<img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive why-home-tuitions how-it-works-2"
												alt="Home Tutor Site testimonial" width="1" height="1">
										</div>
										<div class="testimonial-content">
											<p>
												<em><b>Fast & Reliable: </b> We have over 4 lakh
													tutors. So we can arrange a tutor super quick. 100% of the
													tuition fee goes to tutor. So they continue for long time.
												</em>
											</p>
										</div>
									</div>
									<div class="home-testimonial-block">
										<div class="pull-left user-pic">

											<img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive why-home-tuitions how-it-works-3"
												alt="Home Tutor Site testimonial" width="1" height="1">
										</div>
										<div class="testimonial-content">
											<p>
												<em><b> Best Customer Service:</b> Our customer service
													team of over 25 members serve our customers through
													phone/email/whatsapp/livechat support daily 9am to 8pm.</em>
											</p>
										</div>
									</div>
									<div class="home-testimonial-block">
										<div class="pull-left user-pic">

											<img
												src="https://static.hometutorsite.com/content/images/common-sm/transparent.png"
												class="img-responsive why-home-tuitions how-it-works-4"
												alt="Home Tutor Site testimonial" width="1" height="1">
										</div>
										<div class="testimonial-content">
											<p>
												<em><b>Refund Policy: </b>We have best in class 30 day
													100% money back refund policy. For details <a
													href="https://www.hometutorsite.com/home/refundandcancellationpolicy/"
													target="_blank">click here</a> </em>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<a class="paypal-offer" href="/home/pricing">
					<div class="row">
						<div class="container">
							<div class="row home-testimonial-row">
								<div class="PayPalBanner-Shadow">
									<div class="home-testimonial-block">
										<div class="pull-left text-center user-pic">
											<img
												src="https://s3-ap-southeast-1.amazonaws.com/hometuitionsite/email-images/PayPalBanners/special-offer.png"
												class="img-responsive text-center"
												alt="Home Tutor Site testimonial">
										</div>
										<div class="testimonial-content text-center">
											<p class="paypal-p text-center">
												<strong> New <img
													src="https://s3-ap-southeast-1.amazonaws.com/hometuitionsite/email-images/PayPalBanners/paypal.png" />
													users get 50% cashback* upto Rs 200 on first transaction.
												</strong>
											</p>
											<h4 class="text-center">*T&C cashback will be credited 5
												days after the transaction</h4>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>

			</div>




		</div>
	</div>

</div>


</section>

