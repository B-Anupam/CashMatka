import '../../../core/app_export.dart';

/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {
  Userprofile3ItemModel({
    this.userImage,
    this.displayText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.img11475601);
    displayText = displayText ?? Rx("SP DP TP");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? displayText;

  Rx<String>? id;
}
