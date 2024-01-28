import '../android_large_twentynine_screen/widgets/schedulesection_item_widget.dart';
import '../android_large_twentynine_screen/widgets/singledigit_item_widget.dart';
import 'controller/android_large_twentynine_controller.dart';
import 'models/schedulesection_item_model.dart';
import 'models/singledigit_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/app_bar/appbar_leading_image.dart';
import 'package:matka/widgets/app_bar/appbar_title.dart';
import 'package:matka/widgets/app_bar/custom_app_bar.dart';
import 'package:matka/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentynineScreen
    extends GetWidget<AndroidLargeTwentynineController> {
  const AndroidLargeTwentynineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: 360.h,
                padding: EdgeInsets.symmetric(horizontal: 27.h),
                child: Column(children: [
                  _buildNotificationSection(),
                  SizedBox(height: 24.v),
                  _buildScheduleSection()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_main_starline2".tr,
            margin: EdgeInsets.only(left: 22.h)));
  }

  /// Section Widget
  Widget _buildNotificationSection() {
    return Column(children: [
      Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    child: Text("lbl_notification".tr,
                        style: CustomTextStyles.titleSmall14)),
                Obx(() => CustomSwitch(
                    margin: EdgeInsets.only(left: 7.h),
                    value: controller.isSelectedSwitch.value,
                    onChange: (value) {
                      controller.isSelectedSwitch.value = value;
                    }))
              ]))),
      SizedBox(height: 14.v),
      Obx(() => Wrap(
          runSpacing: 12.v,
          spacing: 12.h,
          children: List<Widget>.generate(
              controller.androidLargeTwentynineModelObj.value
                  .singledigitItemList.value.length, (index) {
            SingledigitItemModel model = controller
                .androidLargeTwentynineModelObj
                .value
                .singledigitItemList
                .value[index];
            return SingledigitItemWidget(model);
          })))
    ]);
  }

  /// Section Widget
  Widget _buildScheduleSection() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 4.h, right: 5.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: controller.androidLargeTwentynineModelObj.value
                    .schedulesectionItemList.value.length,
                itemBuilder: (context, index) {
                  SchedulesectionItemModel model = controller
                      .androidLargeTwentynineModelObj
                      .value
                      .schedulesectionItemList
                      .value[index];
                  return SchedulesectionItemWidget(model, onTapPlayButton1: () {
                    onTapPlayButton1();
                  });
                }))));
  }

  /// Navigates to the androidLargeSeventeenScreen when the action is triggered.
  onTapPlayButton1() {
    Get.toNamed(AppRoutes.androidLargeSeventeenScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
