




/*---------- End ------------*/
/* Tournament Date Filter */
$(document).ready(function() {
	$(".date-filter").click(function() {
		$(".jalendarDiv").slideToggle();
	});

	$(".filter-property").click(function() {
		$(".tournament-filter").slideToggle();
	});

});


// Safari browser Bug Fix
if (!String.prototype.includes) {
	String.prototype.includes = function(search, start) {
		'use strict';
		if (typeof start !== 'number') {
			start = 0;
		}
		if (start + search.length > this.length) {
			return false;
		} else {
			return this.indexOf(search, start) !== -1;
		}
	};
}


function nospaces(t) {
	if (t.value.match(/\s/g)) {
		// alert('Sorry, you are not allowed to enter any spaces');
		t.value = t.value.replace(/\s/g, '');
	}
}

function blogLink(value) {
	window.location = value;
}

// ////////For show notification using infinite scroll Start//////////////////





 
// ////////For show notification using infinite scroll End//////////////////
// ///////////////////For Open dialogs Start/////////////////////



// ///////////////////For Open dialogs End/////////////////////

$(document)
		.ready(
				function() {
					$('.login-email')
							.keyup(
									function() {
										$('.namealert').html('');
										var username = $('.login-email').val();
										if (/^((\d+(\.\d *)?)|((\d*\.)?\d+))$/.test(username)) {
											if (/^(\+91-|\+91|0)?\d{10}$/.test(username) == false) {
												$('.namealert').html('');
												$('.namealert').html('<i class="fa fa-times-circle danger"></i>');
											} /*else {
												$('.namealert').html('');
												$('.namealert').html('<i class="fa fa-check-circle warning"></i>');
											}*/
										} else {
											if ((/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
													.test(username) == false)&&(/^[a-zA-Z0-9_]*$/.test(username)==false)) {
												$('.namealert').html('');
												/*$('.namealert').html('<i class="fa fa-times-circle danger"></i>');*/
											} /*else {
												$('.namealert').html('');
												$('.namealert').html('<i class="fa fa-check-circle warning"></i>');
											}*/
										}

									});
				});
$(document)
		.ready(
				function() {
					$('.home_login')
					.keyup(
							function() {
								$('.namealert').html('');
								var username = $('.home_login').val();
								if (/^((\d+(\.\d *)?)|((\d*\.)?\d+))$/.test(username)) {
									if (/^(\+91-|\+91|0)?\d{10}$/.test(username) == false) {
										$('.namealert').html('');
										$('.namealert').html('<i class="fa fa-times-circle danger"></i>');
									}
									/*} else {
										$('.namealert').html('');
										$('.namealert').html('<i class="fa fa-check-circle warning"></i>');
									}*/
								} else {
									if ((/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
											.test(username) == false)&&(/^[a-zA-Z0-9_]*$/.test(username)==false)) {
										$('.namealert').html('');
										/*$('.namealert').html('<i class="fa fa-times-circle danger"></i>');*/
									} /*else {
										$('.namealert').html('');
										$('.namealert').html('<i class="fa fa-check-circle warning"></i>');
									}*/
								}

							});
		});

$(document)
		.ready(
				function() {
					$('.reset-login-email')
							.keyup(
									function() {
										$('.namealert').html('');
										var username = $('.reset-login-email').val();
										if (/^((\d+(\.\d *)?)|((\d*\.)?\d+))$/.test(username)) {
											if (/^(\+91-|\+91|0)?\d{10}$/.test(username) == false) {
												$('.namealert').html('');
												$('.namealert').html('<i class="fa fa-times-circle danger"></i>');
											} /*else {
												$('.namealert').html('');
												$('.namealert').html('<i class="fa fa-check-circle warning"></i>');
											}*/
										} else {
											if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
													.test(username) == false) {
												$('.namealert').html('');
												/*$('.namealert').html('<i class="fa fa-times-circle danger"></i>');*/
											} /*else {
												$('.namealert').html('');
												$('.namealert').html('<i class="fa fa-check-circle warning"></i>');
											}*/
										}

									});
				});

$(document)
		.ready(
				function() {
					$('.relogin-email')
							.keyup(
									function() {
										$('.namealert').html('');
										var username = $('.relogin-email').val();
										if (/^((\d+(\.\d *)?)|((\d*\.)?\d+))$/.test(username)) {
											if (/^(\+91-|\+91|0)?\d{10}$/.test(username) == false) {
												$('.namealert').html('');
												$('.namealert').html('<i class="fa fa-times-circle danger"></i>');
											} /*else {
												$('.namealert').html('');
												$('.namealert').html('<i class="fa fa-check-circle warning"></i>');
											}*/
										} else {
											if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
													.test(username) == false) {
												$('.namealert').html('');
												/*$('.namealert').html('<i class="fa fa-times-circle danger"></i>');*/
											} /*else {
												$('.namealert').html('');
												$('.namealert').html('<i class="fa fa-check-circle warning"></i>');
											}*/
										}

									});
				});

$(document).ready(function() {
	$('.signup-email').keyup(function() {
		$('.mailalert').html('');
		var name = $('.signup-email').val();
		if (name === '') {
			$('.mailalert').html('');
		} else {
			if (/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/.test(name) === false) {
				$('.mailalert').html('');
				$('.mailalert').html('<i class="fa fa-times-circle danger"></i>');
			} else {
				$('.mailalert').html('');
				$('.mailalert').html('<i class="fa fa-check-circle warning"></i>');
			}
		}

	});
});
$(document).ready(function() {
	$(".number-only").keypress(function() {
		return (/\d/.test(String.fromCharCode(event.which)))
	});
});
$(document).ready(function() {
	$('.signup-phone').keyup(function() {
		$('.namealert').html('');
		var name = $('.signup-phone').val();
		if (name === '') {
			$('.numalert').html('');
		} else {
			if (/^\d{10}/.test(name) === false) {
				$('.numalert').html('');
				/*$('.numalert').html('<i class="fa fa-times-circle danger"></i>');*/
			} else {
				$('.numalert').html('');
				$('.numalert').html('<i class="fa fa-check-circle warning"></i>');
			}
		}

	});
});

$(document).ready(function() {
	$(".view_pass").click(function() {
		if ($(".pass").attr('type') == 'password') {
			$(".pass").attr('type', 'text');
		} else {
			$(".pass").attr('type', 'password');
		}
	});

	$(".pass").keyup(function() {
		$(".noti-msg").show();
	});
	$(".pass").mouseleave(function() {
		$(".noti-msg").hide();
	});
	$(".signup-email").keyup(function() {
		$(".noti-msg2").show();
	});
	$(".signup-email").mouseleave(function() {
		$(".noti-msg2").hide();
	});
	// $(".signup-phone")
	// .mouseover(
	// function() {
	// $(".noti-msg3").show();
	// document.getElementById("validMobile").innerHTML = 'Optional';
	// });
	// $(".signup-phone").mouseleave(function() {
	// $(".noti-msg3").hide();
	// });
	$(".signup-phone").keyup(function() {
		var name = $('.signup-phone').val();
		$(".noti-msg3").show();
		if (/^\d{10}/.test(name)) {
			$(".noti-msg3").hide();
		} else
			document.getElementById("validMobile").innerHTML = 'Please enter valid Mobile';
	});
	$(".signup-phone").keydown(function() {
		$(".noti-msg3").hide();
	});

});

$(document).ready(function(){
    $("#personalDetailsCity").keypress(function(event){
        var inputValue = event.which;
        if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)) { 
            event.preventDefault(); 
        }
    });
});

$(document).ready(function() {
	$('.vpb_switch_on_or_off').css('display', 'none');
	$('.on, .off').css('text-indent', '-50000px');
	
});

function vpb_on_off_switch(value) {

	if (value == 'on') {
		$('div.vpb_switch_button').css('background-position', 'left');
		$("#vpb_switch_status").val(value);
		$('#vpb_response').hide().fadeIn(1000).html('The switch has been turned: <b>' + value + '</b>').addClass(
				'vpb_response');
	} else if (value == 'off') {
		$('div.vpb_switch_button').css('background-position', 'right');
		$("#vpb_switch_status").val(value);
		$('#vpb_response').hide().fadeIn(1000).html('The switch has been turned: <b>' + value + '</b>').addClass(
				'vpb_response');
	} else {

	}
}

$(document).ready(function() {
	$(".btn-grey").click(function() {
		$(".btn-grey").css("background-color", "");
		$(".value-holder").val($(this).attr("extraval"));
		$(this).css("background-color", "#00ccff");
	});
});

$(function() {
	$.validator.addMethod("customemail", function(value, element) {
		return /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/.test(value);
	}, "Please enter a valid email address.");
	$.validator.addMethod("customemailormobile", function(value, element) {
		if (/^((\d+(\.\d *)?)|((\d*\.)?\d+))$/.test(value)) {
			return (/^(\+91-|\+91|0)?\d{10}$/.test(value));
		} else {
			return (/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/.test(value));
		}
	}, "Enter valid email or mobile or game name ");
	$.validator.addMethod("resetcustomemail", function(value, element) {
		return /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/.test(value);
	}, "Please enter a valid email address.");
	$.validator.addMethod("custompass", function(value, element) {
		return /[\@\#\$\%\^\&\*\(\)\_\+\!]/.test(value) && /[a-z]/.test(value);
	}, "3 Characters, 1 Symbol, 1 Uppercase");
	$.validator.addMethod("custompass_upper", function(value, element) {
		return /[A-Z]/.test(value);
	}, "1 Uppercase");
	$.validator.addMethod("custompan", function(value, element) {
		return /[a-zA-z]{5}\d{4}[a-zA-Z]{1}/.test(value);
	}, "5 Characters, 4 Number, 1 Characters");
	$.validator.addMethod("ifscCode", function(value, element) {
		return /[a-zA-z]{4}\d{7}/.test(value);
	}, "4 Characters, 7 Number");

	$.validator.addMethod("lettersonly", function(value, element) {
		return this.optional(element) || /^[a-zA-Z\s]*$/.test(value);
	}, "Letters only please");

	$('.myform').each(function() {
		$(this).validate({
			keyup : true,
			focusInvalid : true,
			onfocusout : function(element, event) {
				this.element(element);
			},
			rules : {
				contactus_number : {
					required : true,
					digits : true,
					minlength : 10,
					maxlength : 10
				},
				contactus_name : {
					required : true,
					lettersonly : true,
					maxlength : 25
				},
				contactus_message : {
					required : true,
					lettersonly : true
				},email : {
					required : true,
					email : true,
					customemail : true
				},
				
				messages : {
					"email" : {
						required : "Enter an email"
					},
					
					"contactus_name" : {
						required : "Enter your name",
						maxlength : "Enter maximum 25 characters"
					},
					"contactus_message" : {
						required : "Enter your message."
					},
					"contactus_number" : {
						required : "Enter a mobile number",
						minlength : "Enter 10 digit mobile number"
					}
					
				},
				errorPlacement : function(error, element) {
					if (element.attr('name') === 'above18') {
						error.insertAfter($(".above-msg"));
					} else {
						error.insertAfter($('input[name=' + element.attr('name') + ']').last());
					}
				}
			}
		});
	});

	$('#signupLink').click(function() {
		$("label.error").hide();
		$(".error").removeClass("error");
		$(".valid").removeClass("valid");
	});
	$('#loginLink').click(function() {
		$("label.error").hide();
		$(".error").removeClass("error");
		$(".valid").removeClass("valid");
	});
	$('.resetSetting').click(function() {
		$("label.error").hide();
		$(".error").removeClass("error");
		$(".valid").removeClass("valid");
		$('.namealert').html('');
	});
});


