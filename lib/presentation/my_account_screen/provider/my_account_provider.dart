import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/my_account_screen/models/my_account_model.dart';

/// A provider class for the MyAccountScreen.
///
/// This provider manages the state of the MyAccountScreen, including the
/// current myAccountModelObj

// ignore_for_file: must_be_immutable
class MyAccountProvider extends ChangeNotifier {
  TextEditingController usernameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController phoneNumberFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  MyAccountModel myAccountModelObj = MyAccountModel();

  @override
  void dispose() {
    super.dispose();
    usernameFieldController.dispose();
    emailFieldController.dispose();
    phoneNumberFieldController.dispose();
    passwordFieldController.dispose();
  }
}
