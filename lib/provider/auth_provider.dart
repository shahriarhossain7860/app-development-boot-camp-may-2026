import 'package:flutter/foundation.dart';

final class AuthProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool _showPassword = true;
  bool _showConfirmPassword = true;
  bool _isSubscribed = false;
  
  // --- Onboarding Data ---
  int _currentStep = 1;
  String _userName = "";
  int _userAge = 0;
  int _currentIdentifyWomenIndex = -1;
  int _stayConnectedStatus = -1;
  int _settingsStatus = -1;
  int _treatmentStatus = -1;
  int _medicationStatus = -1;
  String _selectedMedication = 'Select your medication';

  // --- Waitlist Email ---
  String _waitlistEmail = '';

  // --- Existing properties...
  String _signUpEmail = '';
  String _signUpPassword = '';
  String _signUpConfirmPassword = '';
  String _forgotPasswordEmail = '';
  int _userId = -1;
  String _userImage = "";
  String _otpCode = "";
  String _firstName = "";
  String _lastName = "";
  String _dob = "";
  String _bio = "";

  // --- Getters ---
  bool get isLoading => _isLoading;
  bool get isSubscribed => _isSubscribed;
  bool get showPassword => _showPassword;
  bool get showConfirmPassword => _showConfirmPassword;
  
  // --- Onboarding Getters ---
  int get currentStep => _currentStep;
  String get userName => _userName;
  int get userAge => _userAge;
  int get currentIdentifyWomenIndex => _currentIdentifyWomenIndex;
  int get stayConnectedStatus => _stayConnectedStatus;
  int get settingsStatus => _settingsStatus;
  int get treatmentStatus => _treatmentStatus;
  int get medicationStatus => _medicationStatus;
  String get selectedMedication => _selectedMedication;

  // --- Waitlist Email Getter ---
  String get waitlistEmail => _waitlistEmail;

  // --- Existing getters...
  String get forgotPasswordEmail => _forgotPasswordEmail;
  int get userId => _userId;
  String get otp => _otpCode;
  String get userImage => _userImage;
  String get signUpEmail => _signUpEmail;
  String get signUpPassword => _signUpPassword;
  String get signUpConfirmPassword => _signUpConfirmPassword;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get dob => _dob;
  String get bio => _bio;

  // --- Onboarding Setters ---
  void setCurrentStep(int step) {
    _currentStep = step;
    notifyListeners();
  }

  void setUserName(String name) {
    _userName = name;
    notifyListeners();
  }

  void setUserAge(int age) {
    _userAge = age;
    notifyListeners();
  }

  void setCurrentIdentifyWomenIndex(int index) {
    _currentIdentifyWomenIndex = index;
    notifyListeners();
  }

  void setStayConnectedStatus(int status) {
    _stayConnectedStatus = status;
    notifyListeners();
  }

  void setSettingsStatus(int status) {
    _settingsStatus = status;
    notifyListeners();
  }

  void setTreatmentStatus(int status) {
    _treatmentStatus = status;
    notifyListeners();
  }

  void setMedicationStatus(int status) {
    _medicationStatus = status;
    notifyListeners();
  }

  void setSelectedMedication(String medication) {
    _selectedMedication = medication;
    notifyListeners();
  }

  // --- Waitlist Email Setter ---
  void setWaitlistEmail(String email) {
    _waitlistEmail = email;
    notifyListeners();
  }

  // --- Reset onboarding data (optional) ---
  void resetOnboardingData() {
    _currentStep = 1;
    _userName = "";
    _userAge = 0;
    _currentIdentifyWomenIndex = -1;
    _stayConnectedStatus = -1;
    _settingsStatus = -1;
    _treatmentStatus = -1;
    _medicationStatus = -1;
    _selectedMedication = 'Select your medication';
    notifyListeners();
  }

  // --- Existing methods...
  void toogleShowPassword() {
    _showPassword = !_showPassword;
    notifyListeners();
  }

  void toogleShowConfirmPassword() {
    _showConfirmPassword = !_showConfirmPassword;
    notifyListeners();
  }

  void toggleLoading({required bool isLoading}) {
    _isLoading = isLoading;
    notifyListeners();
  }

  void setEmail({required String email}) {
    _forgotPasswordEmail = email;
    notifyListeners();
  }

  void setOtp({required String otp}) {
    _otpCode = otp;
    notifyListeners();
  }

  void setUserId({required int id}) {
    _userId = id;
    notifyListeners();
  }

  void setUserImage({required String image}) {
    _userImage = image;
    notifyListeners();
  }

  void setSubscriptionStatus({required String? status}) {
    _isSubscribed = (status != null && status == "active");
    notifyListeners();
  }

  void setFirstName(String name) {
    _firstName = name;
    notifyListeners();
  }

  void setLastName(String name) {
    _lastName = name;
    notifyListeners();
  }

  void setDob(String date) {
    _dob = date;
    notifyListeners();
  }

  void setBio(String text) {
    _bio = text;
    notifyListeners();
  }

  void setSignUpData({
    required String email,
    required String password,
    required String confirmPassword,
  }) {
    _signUpEmail = email;
    _signUpPassword = password;
    _signUpConfirmPassword = confirmPassword;
    notifyListeners();
  }
}