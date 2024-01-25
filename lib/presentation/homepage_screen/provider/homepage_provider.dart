import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/homepage_screen/models/homepage_model.dart';

/// A provider class for the HomepageScreen.
///
/// This provider manages the state of the HomepageScreen, including the
/// current homepageModelObj

// ignore_for_file: must_be_immutable
class HomepageProvider extends ChangeNotifier {
  HomepageModel homepageModelObj = HomepageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
