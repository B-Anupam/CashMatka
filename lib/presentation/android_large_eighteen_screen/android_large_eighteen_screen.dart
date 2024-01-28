import 'controller/android_large_eighteen_controller.dart';import 'package:matka/core/app_export.dart';import 'package:matka/widgets/app_bar/appbar_leading_image.dart';import 'package:matka/widgets/app_bar/appbar_subtitle_one.dart';import 'package:matka/widgets/app_bar/appbar_title.dart';import 'package:matka/widgets/app_bar/appbar_trailing_image.dart';import 'package:matka/widgets/app_bar/custom_app_bar.dart';import 'package:matka/widgets/custom_elevated_button.dart';import 'package:matka/widgets/custom_radio_button.dart';import 'package:matka/widgets/custom_switch.dart';import 'package:flutter/material.dart';class AndroidLargeEighteenScreen extends GetWidget<AndroidLargeEighteenController> {const AndroidLargeEighteenScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: 362.h, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 26.v), child: Column(children: [_buildNotificationSetting(), SizedBox(height: 15.v), _buildLanguageSetting(), SizedBox(height: 5.v)])))); }
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 40.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_settings".tr, margin: EdgeInsets.only(left: 26.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgWallet, margin: EdgeInsets.fromLTRB(26.h, 19.v, 16.h, 2.v)), AppbarSubtitleOne(text: "lbl_10".tr, margin: EdgeInsets.only(top: 19.v, right: 42.h))]); }
/// Section Widget
Widget _buildNotificationSetting() { return SizedBox(height: 174.v, width: 321.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v), decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(left: 22.h, right: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 5.v, bottom: 6.v), child: Text("msg_main_notification".tr, style: CustomTextStyles.bodyMediumRobotoRegular_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch.value, onChange: (value) {controller.isSelectedSwitch.value = value;}))])), SizedBox(height: 2.v), Divider(color: appTheme.blueGray100, indent: 9.h), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 24.h, right: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 6.v, bottom: 5.v), child: Text("msg_game_notification".tr, style: CustomTextStyles.bodyMediumRobotoRegular_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch1.value, onChange: (value) {controller.isSelectedSwitch1.value = value;}))])), SizedBox(height: 4.v), Divider(color: appTheme.blueGray100, indent: 9.h), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(left: 24.h, right: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 6.v, bottom: 5.v), child: Text("msg_main_starline_notification".tr, style: CustomTextStyles.bodyMediumRobotoRegular_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch2.value, onChange: (value) {controller.isSelectedSwitch2.value = value;}))]))]))), CustomElevatedButton(height: 33.v, width: 321.h, text: "msg_notification_setting".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL5, buttonTextStyle: CustomTextStyles.bodyMediumRobotoWhiteA700Regular, alignment: Alignment.topCenter)])); }
/// Section Widget
Widget _buildLanguageSetting() { return SizedBox(height: 122.v, width: 321.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v), decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 9.v), Obx(() => Padding(padding: EdgeInsets.only(left: 13.h), child: CustomRadioButton(text: "lbl_english".tr, value: "lbl_english".tr, groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 2.v), textStyle: CustomTextStyles.bodyMediumRobotoRegular_1, onChange: (value) {controller.radioGroup.value = value;}))), SizedBox(height: 11.v), Divider(color: appTheme.blueGray100, indent: 1.h), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 45.h), child: Text("lbl_hindi".tr, style: CustomTextStyles.bodyMediumRobotoRegular_1))]))), CustomElevatedButton(height: 33.v, width: 321.h, text: "msg_language_setting".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL5, buttonTextStyle: CustomTextStyles.bodyMediumRobotoWhiteA700Regular, alignment: Alignment.topCenter)])); }

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); }
 }
