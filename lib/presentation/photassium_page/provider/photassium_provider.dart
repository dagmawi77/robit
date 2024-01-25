import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/photassium_page/models/photassium_model.dart';

/// A provider class for the PhotassiumPage.
///
/// This provider manages the state of the PhotassiumPage, including the
/// current photassiumModelObj
class PhotassiumProvider extends ChangeNotifier {
  PhotassiumModel photassiumModelObj = PhotassiumModel();

  @override
  void dispose() {
    super.dispose();
  }
}
