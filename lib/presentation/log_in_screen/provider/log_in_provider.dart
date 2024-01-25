import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/log_in_screen/models/log_in_model.dart';

/// A provider class for the LogInScreen.
///
/// This provider manages the state of the LogInScreen, including the
/// current logInModelObj

// ignore_for_file: must_be_immutable
class LogInProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LogInModel logInModelObj = LogInModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
