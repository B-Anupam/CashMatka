import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.userImage, this.singleDigitsText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgFinger1);singleDigitsText = singleDigitsText  ?? Rx("Single Digits");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? singleDigitsText;

Rx<String>? id;

 }
