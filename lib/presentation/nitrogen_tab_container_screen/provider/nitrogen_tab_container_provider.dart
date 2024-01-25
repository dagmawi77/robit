import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/nitrogen_tab_container_screen/models/nitrogen_tab_container_model.dart';

/// A provider class for the NitrogenTabContainerScreen.
///
/// This provider manages the state of the NitrogenTabContainerScreen, including the
/// current nitrogenTabContainerModelObj

// ignore_for_file: must_be_immutable
class NitrogenTabContainerProvider extends ChangeNotifier {
  NitrogenTabContainerModel nitrogenTabContainerModelObj =
      NitrogenTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
