import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.titleText,
    this.dateText,
    this.id,
  }) {
    titleText = titleText ?? "Nitrogen";
    dateText = dateText ?? "Aug 20, 2022";
    id = id ?? "";
  }

  String? titleText;

  String? dateText;

  String? id;
}
