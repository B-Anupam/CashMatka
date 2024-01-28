import '../controller/home_page_controller.dart';
import '../models/games_model.dart';
import '../models/userprofile_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapPlayButton,
  }) : super(
          key: key,
        );

  GamesListModel? userprofileItemModelObj;

  var controller = Get.find<HomePageController>();

  VoidCallback? onTapPlayButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofileItemModelObj!.endTime.toString(),
                    style: CustomTextStyles.bodyMediumRobotoRegular_1,
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      userprofileItemModelObj!.aliasNames.toString(),
                      style: CustomTextStyles.bodyMediumRobotoRegular_1,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Obx(
                          () => Text(
                            userprofileItemModelObj!.startTime.toString(),
                            style: CustomTextStyles.bodyMediumRoboto,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Obx(
                          () => Text(
                            userprofileItemModelObj!.endTime.toString(),
                            style: CustomTextStyles.bodyMediumRoboto,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              children: [
                CustomElevatedButton(
                  height: 34.v,
                  width: 53.h,
                  text: "lbl_play".tr,
                  margin: EdgeInsets.only(right: 21.h),
                  buttonStyle: CustomButtonStyles.outlineBlackTL17,
                  buttonTextStyle: theme.textTheme.labelLarge!,
                  onPressed: () {
                    onTapPlayButton!.call();
                  },
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 132.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          userprofileItemModelObj!.endTime.toString(),
                          style: CustomTextStyles.bodyMediumRoboto,
                        ),
                      ),
                      Obx(
                        () => Text(
                          userprofileItemModelObj!.endTime.toString(),
                          style: CustomTextStyles.bodyMediumRoboto,
                        ),
                      ),
                    ],
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
