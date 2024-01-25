import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/humidity_page/models/humidity_model.dart';

/// A provider class for the HumidityPage.
///
/// This provider manages the state of the HumidityPage, including the
/// current humidityModelObj
class HumidityProvider extends ChangeNotifier {
  HumidityModel humidityModelObj = HumidityModel();

  @override
  void dispose() {
    super.dispose();
  }
}
