import '../controller/android_large_twentynine_controller.dart';
import '../models/schedulesection_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SchedulesectionItemWidget extends StatelessWidget {
  SchedulesectionItemWidget(
    this.schedulesectionItemModelObj, {
    Key? key,
    this.onTapPlayButton1,
  }) : super(
          key: key,
        );

  SchedulesectionItemModel schedulesectionItemModelObj;

  var controller = Get.find<AndroidLargeTwentynineController>();

  VoidCallback? onTapPlayButton1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAlarmClock,
            height: 35.adaptSize,
            width: 35.adaptSize,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 12.v,
              bottom: 7.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 20.v,
              bottom: 17.v,
            ),
            child: Obx(
              () => Text(
                schedulesectionItemModelObj.timeText!.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 45.v,
            width: 73.h,
            margin: EdgeInsets.only(bottom: 7.v),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomElevatedButton(
                  height: 34.v,
                  width: 53.h,
                  text: "lbl_play".tr,
                  buttonStyle: CustomButtonStyles.outlineBlackTL17,
                  buttonTextStyle: theme.textTheme.labelLarge!,
                  onPressed: () {
                    onTapPlayButton1!.call();
                  },
                  alignment: Alignment.bottomCenter,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Obx(
                    () => Text(
                      schedulesectionItemModelObj.closedText!.value,
                      style: CustomTextStyles.bodySmallDeeporangeA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
