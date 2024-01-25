import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/analyzed_data_screen/models/analyzed_data_model.dart';

/// A provider class for the AnalyzedDataScreen.
///
/// This provider manages the state of the AnalyzedDataScreen, including the
/// current analyzedDataModelObj

// ignore_for_file: must_be_immutable
class AnalyzedDataProvider extends ChangeNotifier {
  AnalyzedDataModel analyzedDataModelObj = AnalyzedDataModel();

  @override
  void dispose() {
    super.dispose();
  }
}
