import '../controller/android_large_twentythree_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
    this.onTapWidget,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<AndroidLargeTwentythreeController>();

  VoidCallback? onTapWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder57,
          ),
          child: GestureDetector(
            onTap: () {
              onTapWidget!.call();
            },
            child: Container(
              //   height: 115.adaptSize,
              //   width: 115.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 31.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder57,
              ),
              child: Obx(
                () => CustomImageView(
                  fit: BoxFit.fill,
                  width: 50,
                  height: 70,
                  imagePath: userprofile1ItemModelObj.userImage!.value,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8.v),
        Obx(
          () => Text(
            userprofile1ItemModelObj.singleDigitsText!.value,
            style: CustomTextStyles.bodyLargeRoboto,
          ),
        ),
      ],
    );
  }
}
