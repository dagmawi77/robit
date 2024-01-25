import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/nitrogen_page/models/nitrogen_model.dart';

/// A provider class for the NitrogenPage.
///
/// This provider manages the state of the NitrogenPage, including the
/// current nitrogenModelObj
class NitrogenProvider extends ChangeNotifier {
  NitrogenModel nitrogenModelObj = NitrogenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
