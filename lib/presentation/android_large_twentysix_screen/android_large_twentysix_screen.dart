import 'controller/android_large_twentysix_controller.dart';import 'package:matka/core/app_export.dart';import 'package:matka/widgets/app_bar/appbar_subtitle_one.dart';import 'package:matka/widgets/app_bar/appbar_title.dart';import 'package:matka/widgets/app_bar/appbar_trailing_image.dart';import 'package:matka/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class AndroidLargeTwentysixScreen extends GetWidget<AndroidLargeTwentysixController> {const AndroidLargeTwentysixScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: 360.h, padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 21.v), child: Column(children: [_buildDiceRow(), SizedBox(height: 18.v), _buildRouletteRow(), SizedBox(height: 5.v)])))); }
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 57.h, leading: Container(height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 33.h, top: 14.v, bottom: 17.v), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center, onTap: () {onTapImgArrowLeft();}), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center)])), title: AppbarTitle(text: "lbl_my_bets2".tr, margin: EdgeInsets.only(left: 13.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgWallet, margin: EdgeInsets.fromLTRB(28.h, 18.v, 17.h, 2.v)), AppbarSubtitleOne(text: "lbl_10".tr, margin: EdgeInsets.only(top: 18.v, right: 45.h))]); }
/// Section Widget
Widget _buildDiceRow() { return GestureDetector(onTap: () {onTapDiceRow();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 3.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.circleBorder22), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgDice40x33, height: 40.v, width: 33.h, margin: EdgeInsets.only(top: 1.v)), Padding(padding: EdgeInsets.only(left: 10.h, top: 11.v, bottom: 9.v), child: Text("lbl_bet_history".tr, style: theme.textTheme.bodyLarge))]))); }
/// Section Widget
Widget _buildRouletteRow() { return GestureDetector(onTap: () {onTapRouletteRow();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 3.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.circleBorder22), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgRoulette, height: 40.adaptSize, width: 40.adaptSize, margin: EdgeInsets.only(top: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 11.v, bottom: 9.v), child: Text("msg_main_starline_bet".tr, style: theme.textTheme.bodyLarge))]))); }

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); }
/// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
onTapDiceRow() { Get.toNamed(AppRoutes.androidLargeTwentyeightScreen, ); }
/// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
onTapRouletteRow() { Get.toNamed(AppRoutes.androidLargeTwentyeightScreen, ); }
 }
