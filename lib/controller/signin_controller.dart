import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInController extends ChangeNotifier {
  bool _isSignIn = true;
  GlobalKey<FormState> signIn = GlobalKey<FormState>();
  bool get isSignin => _isSignIn;
  final mobileController = TextEditingController();

  final companyController = TextEditingController();
  final emailController = TextEditingController();
  final gestNum = TextEditingController();
  final panNum = TextEditingController();

  clearSignIn() {
    mobileController.clear();
    notifyListeners();
  }

  onSigninToggle() {
    _isSignIn = !_isSignIn;
    clearSignIn();
    notifyListeners();
  }
}
