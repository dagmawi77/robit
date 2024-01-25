import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.humidityText,
    this.dateText,
    this.id,
  }) {
    humidityText = humidityText ?? "Humidity";
    dateText = dateText ?? "Aug 20, 2022";
    id = id ?? "";
  }

  String? humidityText;

  String? dateText;

  String? id;
}
