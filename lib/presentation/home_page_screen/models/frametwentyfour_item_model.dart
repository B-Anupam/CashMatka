import '../../../core/app_export.dart';/// This class is used in the [frametwentyfour_item_widget] screen.
class FrametwentyfourItemModel {FrametwentyfourItemModel({this.image, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle2);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? id;

 }
