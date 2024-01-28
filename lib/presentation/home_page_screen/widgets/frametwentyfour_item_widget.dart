import '../controller/home_page_controller.dart';
import '../models/frametwentyfour_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrametwentyfourItemWidget extends StatelessWidget {
  FrametwentyfourItemWidget(
    this.frametwentyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrametwentyfourItemModel frametwentyfourItemModelObj;

  var controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: frametwentyfourItemModelObj.image!.value,
        height: 104.v,
        width: Get.width,
        radius: BorderRadius.circular(
          12.h,
        ),
        margin: EdgeInsets.only(right: 14.h),
      ),
    );
  }
}
