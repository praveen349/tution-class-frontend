// ContactUs module
AngularModule().setNewModule('contactUs', [ 'vcRecaptcha' ]).setController(
		'contactUsCtrl', contactUsCtrl).bootstrap('contactUsApp');
// home module
AngularModule()
		.setNewModule('home', [ 'vcRecaptcha' ])
		.setController('homeCtrl', homeCtrl).bootstrap('homeApp');
//header module
AngularModule()
		.setNewModule('header', [ 'vcRecaptcha' ])
		.setController('headerCtrl', headerCtrl).bootstrap('headerApp');
//footer module
AngularModule()
		.setNewModule('footer', [ 'vcRecaptcha' ])
		.setController('footerCtrl', footerCtrl).bootstrap('footerApp');
//footer module
AngularModule()
		.setNewModule('login', [ 'vcRecaptcha' ])
		.setController('loginCtrl', loginCtrl).bootstrap('loginApp');
