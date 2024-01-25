import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/ph_page/models/ph_model.dart';

/// A provider class for the PhPage.
///
/// This provider manages the state of the PhPage, including the
/// current phModelObj
class PhProvider extends ChangeNotifier {
  PhModel phModelObj = PhModel();

  @override
  void dispose() {
    super.dispose();
  }
}
