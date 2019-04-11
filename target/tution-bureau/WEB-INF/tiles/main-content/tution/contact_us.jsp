<div class="row" id="contactUsApp" ng-controller="contactUsCtrl">
	<div class="full-width">
		<div class="right-heading-etc">
			<div class="right-bar-heading">
				<h1>Contact Us</h1>
			</div>
		</div>
		<div class="right-common-content">
			<div class="row contact-row">
				<div class="col-xs-12 col-md-6" ng-submit="contactUsSubmit()">
					<h4>Contact Form</h4>
					<form 
						class="class="myform"
						id="contact-form" method="post">
						<input name="__RequestVerificationToken" type="hidden"
							value="h_TS_0B6NGDZLfPDdKGJQKh4MVrq1raiQz8Vg3mS4Jdi7p-EFU1iF_qbf0fZTLzHT9l2uyJpFXY8k7EiNt7Wqmb7ECQwXOWv_BJOAlhsbLY1" />
						<div class="form-group">
							<div class="col-sm-7">
								<div class="input-group margin-bottom-sm">
									<span class="input-group-addon"> <span
										class="common-sprite-opt contact-name"></span>

									</span> <input id="Name" name="contactus_name" ng-model="name"
										class="form-control input-xlarge  validate[required]"
										type="text" placeholder="Name">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-7">
								<div class="input-group margin-bottom-sm">
									<span class="input-group-addon input-mail-block"> <span
										class="common-sprite-opt input-mobile"></span>
									</span> <input id="Mobile" name="contactus_number"
										ng-model="mobile"
										class="form-control input-xlarge  validate[required]"
										type="text" placeholder="Mobile Number">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-7">
								<div class="input-group margin-bottom-sm">
									<span class="input-group-addon input-mail-block"> <span
										class="common-sprite-opt input-mail"></span>

									</span> <input id="Email" name="contactus_email"
									ng-model="email"
										class="form-control input-xlarge  validate[required,custom[email]]"
										type="text" placeholder="Email address">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-7">
								<div class="input-group margin-bottom-sm">
									<span class="input-group-addon contact-form-mail"> <span
										class="common-sprite-opt contact-message"></span>


									</span>
									<textarea rows="3" id="Message" name="contactus_message"
										class="form-control input-xlarge  validate[required]"
										ng-model="message"
										placeholder="Message"></textarea>
								</div>
							</div>
						</div>
						<div class="form-group contact-btn">
							<div class="col-sm-offset-2 col-sm-10 submit-btn-block">
								<button type="submit" class="btn btn-info btn-orange">Submit</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-xs-6 col-md-6 contact-details">
					<h4>Contact Details</h4>


					<div class="row">
						<div>
							Kolkata Tution Bureau.<br /> # 12/2, NC Mitra Road,
							Third Floor,<br /> Near Dumdum Cantonment Railway station,<br />
							kollata-700028,<br /> West Bengal, India.

						</div>
					</div>

					<div class="row">
						<div>
							<span class="common-sprite-opt contact-details-phone"></span>9572419653<br />
						</div>
					</div>

					<div class="row">
						<div>
							<span class="common-sprite-opt contact-details-mail"></span> <a
								href="mailto:#">praveenksingh349@gmail.com</a>
						</div>

					</div>

					<div class="row">
						<div>
							Company Number:<strong> U72900AP2011PTC073472</strong>
						</div>

					</div>
					<div class="row">
						<div>
							GST Number: <strong>37AABCW0935E1ZI</strong>
						</div>

					</div>
				</div>


				<div class="col-md-12">
					<h4>Location Map</h4>
					<div id="map-canvas"></div>

				</div>

			</div>
		</div>
	</div>
</div>
</div>
</div>
