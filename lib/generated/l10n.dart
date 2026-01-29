// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Account created successfully`
  String get addAccountSuccess {
    return Intl.message(
      'Account created successfully',
      name: 'addAccountSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!`
  String get signUpNowAndStartExploringAllThatOurApp {
    return Intl.message(
      'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
      name: 'signUpNowAndStartExploringAllThatOurApp',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Search doctor by name`
  String get searchDoctorByName {
    return Intl.message(
      'Search doctor by name',
      name: 'searchDoctorByName',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message('FAQ', name: 'faq', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Log Out`
  String get logOut {
    return Intl.message('Log Out', name: 'logOut', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `You'll need to enter your username and password next time you want to login`
  String get youllNeedToEnterYourUsernameAndPasswordNextTime {
    return Intl.message(
      'You\'ll need to enter your username and password next time you want to login',
      name: 'youllNeedToEnterYourUsernameAndPasswordNextTime',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Logout Successful`
  String get logoutSuccessful {
    return Intl.message(
      'Logout Successful',
      name: 'logoutSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `My Appointment`
  String get myAppointment {
    return Intl.message(
      'My Appointment',
      name: 'myAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Medical records`
  String get medicalRecords {
    return Intl.message(
      'Medical records',
      name: 'medicalRecords',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personalInformation {
    return Intl.message(
      'Personal Information',
      name: 'personalInformation',
      desc: '',
      args: [],
    );
  }

  /// `My Test & Diagnostic`
  String get myTestDiagnostic {
    return Intl.message(
      'My Test & Diagnostic',
      name: 'myTestDiagnostic',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get paymentMethods {
    return Intl.message(
      'Payment Methods',
      name: 'paymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `When you set up your personal information settings, you should take care to provide accurate information.`
  String get whenYouSetUpYourPersonalInformationSettingsYouShould {
    return Intl.message(
      'When you set up your personal information settings, you should take care to provide accurate information.',
      name: 'whenYouSetUpYourPersonalInformationSettingsYouShould',
      desc: '',
      args: [],
    );
  }

  /// `Profile Information`
  String get profileInformation {
    return Intl.message(
      'Profile Information',
      name: 'profileInformation',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Arab`
  String get arab {
    return Intl.message('Arab', name: 'arab', desc: '', args: []);
  }

  /// `What should I expect during a doctor's appointment?`
  String get whatShouldIExpectDuringADoctorsAppointment {
    return Intl.message(
      'What should I expect during a doctor\'s appointment?',
      name: 'whatShouldIExpectDuringADoctorsAppointment',
      desc: '',
      args: [],
    );
  }

  /// `During a doctor's appointment, you can expect to discuss your medical history, current symptoms or concerns, and any medications or treatments you are taking. The doctor will likely perform a physical exam and may order additional tests or procedures if necessary.`
  String get duringADoctorsAppointmentYouCanExpectToDiscussYour {
    return Intl.message(
      'During a doctor\'s appointment, you can expect to discuss your medical history, current symptoms or concerns, and any medications or treatments you are taking. The doctor will likely perform a physical exam and may order additional tests or procedures if necessary.',
      name: 'duringADoctorsAppointmentYouCanExpectToDiscussYour',
      desc: '',
      args: [],
    );
  }

  /// `What should I bring to my doctor's appointment?`
  String get whatShouldIBringToMyDoctorsAppointment {
    return Intl.message(
      'What should I bring to my doctor\'s appointment?',
      name: 'whatShouldIBringToMyDoctorsAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Bring your ID, insurance card, list of medications, and any relevant medical records.`
  String get bringYourIdInsuranceCardListOfMedicationsAndAny {
    return Intl.message(
      'Bring your ID, insurance card, list of medications, and any relevant medical records.',
      name: 'bringYourIdInsuranceCardListOfMedicationsAndAny',
      desc: '',
      args: [],
    );
  }

  /// `What if I need to cancel or reschedule my appointment?`
  String get whatIfINeedToCancelOrRescheduleMyAppointment {
    return Intl.message(
      'What if I need to cancel or reschedule my appointment?',
      name: 'whatIfINeedToCancelOrRescheduleMyAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Contact the clinic as soon as possible to cancel or reschedule.`
  String get contactTheClinicAsSoonAsPossibleToCancelOr {
    return Intl.message(
      'Contact the clinic as soon as possible to cancel or reschedule.',
      name: 'contactTheClinicAsSoonAsPossibleToCancelOr',
      desc: '',
      args: [],
    );
  }

  /// `You can book through the app or call the clinic directly.`
  String get youCanBookThroughTheAppOrCallTheClinic {
    return Intl.message(
      'You can book through the app or call the clinic directly.',
      name: 'youCanBookThroughTheAppOrCallTheClinic',
      desc: '',
      args: [],
    );
  }

  /// `How do I make an appointment with a doctor?`
  String get howDoIMakeAnAppointmentWithADoctor {
    return Intl.message(
      'How do I make an appointment with a doctor?',
      name: 'howDoIMakeAnAppointmentWithADoctor',
      desc: '',
      args: [],
    );
  }

  /// `How early should I arrive for my doctor's appointment?`
  String get howEarlyShouldIArriveForMyDoctorsAppointment {
    return Intl.message(
      'How early should I arrive for my doctor\'s appointment?',
      name: 'howEarlyShouldIArriveForMyDoctorsAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Arrive 15-20 minutes early to complete any paperwork.`
  String get arrive1520MinutesEarlyToCompleteAnyPaperwork {
    return Intl.message(
      'Arrive 15-20 minutes early to complete any paperwork.',
      name: 'arrive1520MinutesEarlyToCompleteAnyPaperwork',
      desc: '',
      args: [],
    );
  }

  /// `How long will my doctor's appointment take?`
  String get howLongWillMyDoctorsAppointmentTake {
    return Intl.message(
      'How long will my doctor\'s appointment take?',
      name: 'howLongWillMyDoctorsAppointmentTake',
      desc: '',
      args: [],
    );
  }

  /// `Appointments typically last 15-30 minutes, but may vary based on your needs.`
  String get appointmentsTypicallyLast1530MinutesButMayVaryBasedOn {
    return Intl.message(
      'Appointments typically last 15-30 minutes, but may vary based on your needs.',
      name: 'appointmentsTypicallyLast1530MinutesButMayVaryBasedOn',
      desc: '',
      args: [],
    );
  }

  /// `How much will my doctor's appointment cost?`
  String get howMuchWillMyDoctorsAppointmentCost {
    return Intl.message(
      'How much will my doctor\'s appointment cost?',
      name: 'howMuchWillMyDoctorsAppointmentCost',
      desc: '',
      args: [],
    );
  }

  /// `Costs vary based on insurance and services; check with your provider for details.`
  String get costsVaryBasedOnInsuranceAndServicesCheckWithYour {
    return Intl.message(
      'Costs vary based on insurance and services; check with your provider for details.',
      name: 'costsVaryBasedOnInsuranceAndServicesCheckWithYour',
      desc: '',
      args: [],
    );
  }

  /// `What should I look for in a good doctor?`
  String get whatShouldILookForInAGoodDoctor {
    return Intl.message(
      'What should I look for in a good doctor?',
      name: 'whatShouldILookForInAGoodDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Look for qualifications, experience, communication skills, and patient reviews.`
  String
  get lookForQualificationsExperienceCommunicationSkillsAndPatientReviews {
    return Intl.message(
      'Look for qualifications, experience, communication skills, and patient reviews.',
      name:
          'lookForQualificationsExperienceCommunicationSkillsAndPatientReviews',
      desc: '',
      args: [],
    );
  }

  /// `Best Doctor \n Appointment App`
  String get bestDoctorNAppointmentApp {
    return Intl.message(
      'Best Doctor \n Appointment App',
      name: 'bestDoctorNAppointmentApp',
      desc: '',
      args: [],
    );
  }

  /// `Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.`
  String get manageAndScheduleAllOfYourMedicalAppointmentsEasilyWith {
    return Intl.message(
      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
      name: 'manageAndScheduleAllOfYourMedicalAppointmentsEasilyWith',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account yet?`
  String get alreadyHaveAnAccountYet {
    return Intl.message(
      'Already have an account yet?',
      name: 'alreadyHaveAnAccountYet',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Login Successful`
  String get loginSuccessful {
    return Intl.message(
      'Login Successful',
      name: 'loginSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `By logging, you agree to our`
  String get byLoggingYouAgreeToOur {
    return Intl.message(
      'By logging, you agree to our',
      name: 'byLoggingYouAgreeToOur',
      desc: '',
      args: [],
    );
  }

  /// ` Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      ' Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get and {
    return Intl.message(' and ', name: 'and', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `We're excited to have you back, can't wait to see what you've been up to since you last logged in.`
  String get wereExcitedToHaveYouBackCantWaitToSee {
    return Intl.message(
      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
      name: 'wereExcitedToHaveYouBackCantWaitToSee',
      desc: '',
      args: [],
    );
  }

  /// `Doctor Details`
  String get doctorDetails {
    return Intl.message(
      'Doctor Details',
      name: 'doctorDetails',
      desc: '',
      args: [],
    );
  }

  /// `Make An Appointment`
  String get makeAnAppointment {
    return Intl.message(
      'Make An Appointment',
      name: 'makeAnAppointment',
      desc: '',
      args: [],
    );
  }

  /// `About Doctor`
  String get aboutDoctor {
    return Intl.message(
      'About Doctor',
      name: 'aboutDoctor',
      desc: '',
      args: [],
    );
  }

  /// `specialization: `
  String get specializationDoctorspecializationname {
    return Intl.message(
      'specialization: ',
      name: 'specializationDoctorspecializationname',
      desc: '',
      args: [],
    );
  }

  /// `degree:`
  String get degree {
    return Intl.message('degree:', name: 'degree', desc: '', args: []);
  }

  /// `Appoint Price`
  String get appointPrice {
    return Intl.message(
      'Appoint Price',
      name: 'appointPrice',
      desc: '',
      args: [],
    );
  }

  /// ` USD / visit`
  String get usdVisit {
    return Intl.message(' USD / visit', name: 'usdVisit', desc: '', args: []);
  }

  /// `Working Time`
  String get workingTime {
    return Intl.message(
      'Working Time',
      name: 'workingTime',
      desc: '',
      args: [],
    );
  }

  /// `start time: `
  String get startTime {
    return Intl.message('start time: ', name: 'startTime', desc: '', args: []);
  }

  /// `end time: `
  String get endTime {
    return Intl.message('end time: ', name: 'endTime', desc: '', args: []);
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `city: `
  String get city {
    return Intl.message('city: ', name: 'city', desc: '', args: []);
  }

  /// `governrate: `
  String get governrate {
    return Intl.message('governrate: ', name: 'governrate', desc: '', args: []);
  }

  /// `An error occurred while fetching doctors.`
  String get anErrorOccurredWhileFetchingDoctors {
    return Intl.message(
      'An error occurred while fetching doctors.',
      name: 'anErrorOccurredWhileFetchingDoctors',
      desc: '',
      args: [],
    );
  }

  /// `/ visit`
  String get visit {
    return Intl.message('/ visit', name: 'visit', desc: '', args: []);
  }

  /// `Recommendation Doctor`
  String get recommendationDoctor {
    return Intl.message(
      'Recommendation Doctor',
      name: 'recommendationDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Book and\nschedule with\nnearest doctor`
  String get bookAndnscheduleWithnnearestDoctor {
    return Intl.message(
      'Book and\nschedule with\nnearest doctor',
      name: 'bookAndnscheduleWithnnearestDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Find Nearby`
  String get findNearby {
    return Intl.message('Find Nearby', name: 'findNearby', desc: '', args: []);
  }

  /// `Hi, `
  String get hiOmar {
    return Intl.message('Hi, ', name: 'hiOmar', desc: '', args: []);
  }

  /// `How Are you Today?`
  String get howAreYouToday {
    return Intl.message(
      'How Are you Today?',
      name: 'howAreYouToday',
      desc: '',
      args: [],
    );
  }

  /// `Doctor Speciality`
  String get doctorSpeciality {
    return Intl.message(
      'Doctor Speciality',
      name: 'doctorSpeciality',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get upcoming {
    return Intl.message('Upcoming', name: 'upcoming', desc: '', args: []);
  }

  /// `Completed`
  String get completed {
    return Intl.message('Completed', name: 'completed', desc: '', args: []);
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message('Cancelled', name: 'cancelled', desc: '', args: []);
  }

  /// `Appointment cancelled`
  String get appointmentCancelled {
    return Intl.message(
      'Appointment cancelled',
      name: 'appointmentCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Appointment done`
  String get appointmentDone {
    return Intl.message(
      'Appointment done',
      name: 'appointmentDone',
      desc: '',
      args: [],
    );
  }

  /// `Wed, 17 May | 08.30 AM`
  String get wed17May0830Am {
    return Intl.message(
      'Wed, 17 May | 08.30 AM',
      name: 'wed17May0830Am',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Appointment`
  String get cancelAppointment {
    return Intl.message(
      'Cancel Appointment',
      name: 'cancelAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Reschedule`
  String get reschedule {
    return Intl.message('Reschedule', name: 'reschedule', desc: '', args: []);
  }

  /// `In Person`
  String get inPerson {
    return Intl.message('In Person', name: 'inPerson', desc: '', args: []);
  }

  /// `Video Call`
  String get videoCall {
    return Intl.message('Video Call', name: 'videoCall', desc: '', args: []);
  }

  /// `Phone Call`
  String get phoneCall {
    return Intl.message('Phone Call', name: 'phoneCall', desc: '', args: []);
  }

  /// `Appointment Type`
  String get appointmentType {
    return Intl.message(
      'Appointment Type',
      name: 'appointmentType',
      desc: '',
      args: [],
    );
  }

  /// `Select Date`
  String get selectDate {
    return Intl.message('Select Date', name: 'selectDate', desc: '', args: []);
  }

  /// `Set Manual`
  String get setManual {
    return Intl.message('Set Manual', name: 'setManual', desc: '', args: []);
  }

  /// `Available time`
  String get availableTime {
    return Intl.message(
      'Available time',
      name: 'availableTime',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message('Details', name: 'details', desc: '', args: []);
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }

  /// `Booking has been rescheduled`
  String get bookingHasBeenRescheduled {
    return Intl.message(
      'Booking has been rescheduled',
      name: 'bookingHasBeenRescheduled',
      desc: '',
      args: [],
    );
  }

  /// `Booking Information`
  String get bookingInformation {
    return Intl.message(
      'Booking Information',
      name: 'bookingInformation',
      desc: '',
      args: [],
    );
  }

  /// `Date & Time`
  String get dateTime {
    return Intl.message('Date & Time', name: 'dateTime', desc: '', args: []);
  }

  /// `Wednesday, 08 May 2023`
  String get wednesday08May2023 {
    return Intl.message(
      'Wednesday, 08 May 2023',
      name: 'wednesday08May2023',
      desc: '',
      args: [],
    );
  }

  /// `Doctor Information`
  String get doctorInformation {
    return Intl.message(
      'Doctor Information',
      name: 'doctorInformation',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }

  /// `Ok`
  String get ok {
    return Intl.message('Ok', name: 'ok', desc: '', args: []);
  }

  /// `Success`
  String get success {
    return Intl.message('Success', name: 'success', desc: '', args: []);
  }

  /// `Loading`
  String get loading {
    return Intl.message('Loading', name: 'loading', desc: '', args: []);
  }

  /// `Please wait...`
  String get pleaseWait {
    return Intl.message(
      'Please wait...',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message('Warning', name: 'warning', desc: '', args: []);
  }

  /// `Coming soon`
  String get comingSoon {
    return Intl.message('Coming soon', name: 'comingSoon', desc: '', args: []);
  }

  /// `This feature is coming soon`
  String get thisFeatureIsComingSoon {
    return Intl.message(
      'This feature is coming soon',
      name: 'thisFeatureIsComingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get pleaseEnterYourEmail {
    return Intl.message(
      'Please enter your email',
      name: 'pleaseEnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get pleaseEnterAValidEmailAddress {
    return Intl.message(
      'Please enter a valid email address',
      name: 'pleaseEnterAValidEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get pleaseEnterYourPassword {
    return Intl.message(
      'Please enter your password',
      name: 'pleaseEnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `The password must contain at least one uppercase letter`
  String get thePasswordMustContainAtLeastOneUppercaseLetter {
    return Intl.message(
      'The password must contain at least one uppercase letter',
      name: 'thePasswordMustContainAtLeastOneUppercaseLetter',
      desc: '',
      args: [],
    );
  }

  /// `The password must contain at least one lowercase letter`
  String get thePasswordMustContainAtLeastOneLowercaseLetter {
    return Intl.message(
      'The password must contain at least one lowercase letter',
      name: 'thePasswordMustContainAtLeastOneLowercaseLetter',
      desc: '',
      args: [],
    );
  }

  /// `The password must contain at least one digit`
  String get thePasswordMustContainAtLeastOneDigit {
    return Intl.message(
      'The password must contain at least one digit',
      name: 'thePasswordMustContainAtLeastOneDigit',
      desc: '',
      args: [],
    );
  }

  /// `The password must contain at least one special character`
  String get thePasswordMustContainAtLeastOneSpecialCharacter {
    return Intl.message(
      'The password must contain at least one special character',
      name: 'thePasswordMustContainAtLeastOneSpecialCharacter',
      desc: '',
      args: [],
    );
  }

  /// `The password must be at least 8 characters long`
  String get thePasswordMustBeAtLeast8CharactersLong {
    return Intl.message(
      'The password must be at least 8 characters long',
      name: 'thePasswordMustBeAtLeast8CharactersLong',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get pleaseEnterYourPhoneNumber {
    return Intl.message(
      'Please enter your phone number',
      name: 'pleaseEnterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get pleaseEnterAValidPhoneNumber {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'pleaseEnterAValidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your full name`
  String get pleaseEnterYourFullName {
    return Intl.message(
      'Please enter your full name',
      name: 'pleaseEnterYourFullName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid name`
  String get pleaseEnterAValidName {
    return Intl.message(
      'Please enter a valid name',
      name: 'pleaseEnterAValidName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your age`
  String get pleaseEnterYourAge {
    return Intl.message(
      'Please enter your age',
      name: 'pleaseEnterYourAge',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid age`
  String get pleaseEnterAValidAge {
    return Intl.message(
      'Please enter a valid age',
      name: 'pleaseEnterAValidAge',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
