import '../controller/android_large_seventeen_controller.dart';
import '../models/userprofile3_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  var controller = Get.find<AndroidLargeSeventeenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 115.adaptSize,
          width: 115.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder57,
          ),
          child: Obx(
            () => CustomImageView(
              imagePath: userprofile3ItemModelObj.userImage!.value,
              height: 78.adaptSize,
              width: 78.adaptSize,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        SizedBox(height: 6.v),
        Obx(
          () => Text(
            userprofile3ItemModelObj.displayText!.value,
            style: CustomTextStyles.bodyLargeRoboto,
          ),
        ),
      ],
    );
  }
}
