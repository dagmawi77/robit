import 'package:flutter/material.dart';
import 'package:robit/core/app_export.dart';
import 'package:robit/presentation/phosphorus_page/models/phosphorus_model.dart';

/// A provider class for the PhosphorusPage.
///
/// This provider manages the state of the PhosphorusPage, including the
/// current phosphorusModelObj
class PhosphorusProvider extends ChangeNotifier {
  PhosphorusModel phosphorusModelObj = PhosphorusModel();

  @override
  void dispose() {
    super.dispose();
  }
}
