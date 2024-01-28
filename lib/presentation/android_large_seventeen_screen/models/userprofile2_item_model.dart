import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.userImage,
    this.singleDigits,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgFinger1);
    singleDigits = singleDigits ?? Rx("Single Digits");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? singleDigits;

  Rx<String>? id;
}
