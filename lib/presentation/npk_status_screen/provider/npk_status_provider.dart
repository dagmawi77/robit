import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/npk_status_screen/models/npk_status_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the NpkStatusScreen.
///
/// This provider manages the state of the NpkStatusScreen, including the
/// current npkStatusModelObj

// ignore_for_file: must_be_immutable
class NpkStatusProvider extends ChangeNotifier {
  NpkStatusModel npkStatusModelObj = NpkStatusModel();

  @override
  void dispose() {
    super.dispose();
  }
}
