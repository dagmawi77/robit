import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/humuidity_ph_screen/models/humuidity_ph_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the HumuidityPhScreen.
///
/// This provider manages the state of the HumuidityPhScreen, including the
/// current humuidityPhModelObj

// ignore_for_file: must_be_immutable
class HumuidityPhProvider extends ChangeNotifier {
  HumuidityPhModel humuidityPhModelObj = HumuidityPhModel();

  @override
  void dispose() {
    super.dispose();
  }
}
