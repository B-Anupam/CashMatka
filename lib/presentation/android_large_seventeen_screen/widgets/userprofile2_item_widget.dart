import '../controller/android_large_seventeen_controller.dart';
import '../models/userprofile2_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<AndroidLargeSeventeenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder57,
          ),
          child: Container(
            height: 115.adaptSize,
            width: 115.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 31.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder57,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: userprofile2ItemModelObj.userImage!.value,
                height: 78.v,
                width: 51.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.v),
        Obx(
          () => Text(
            userprofile2ItemModelObj.singleDigits!.value,
            style: CustomTextStyles.bodyLargeRoboto,
          ),
        ),
      ],
    );
  }
}
