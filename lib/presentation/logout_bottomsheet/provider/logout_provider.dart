import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/logout_bottomsheet/models/logout_model.dart';

/// A provider class for the LogoutBottomsheet.
///
/// This provider manages the state of the LogoutBottomsheet, including the
/// current logoutModelObj

// ignore_for_file: must_be_immutable
class LogoutProvider extends ChangeNotifier {
  LogoutModel logoutModelObj = LogoutModel();

  @override
  void dispose() {
    super.dispose();
  }
}
