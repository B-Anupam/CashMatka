import 'controller/android_large_thirty_controller.dart';import 'package:matka/core/app_export.dart';import 'package:matka/widgets/app_bar/appbar_leading_image.dart';import 'package:matka/widgets/app_bar/appbar_subtitle_one.dart';import 'package:matka/widgets/app_bar/appbar_title.dart';import 'package:matka/widgets/app_bar/appbar_trailing_image.dart';import 'package:matka/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class AndroidLargeThirtyScreen extends GetWidget<AndroidLargeThirtyController> {const AndroidLargeThirtyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: 362.h, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v), child: Column(children: [Padding(padding: EdgeInsets.only(left: 4.h, right: 8.h), child: _buildAddBankAccount(image: ImageConstant.imgAdd, addBankAccount: "lbl_add_funds".tr, onTapAddBankAccount: () {onTapThirtyFour();})), SizedBox(height: 35.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 8.h), child: _buildAddBankAccount(image: ImageConstant.imgBankBuilding, addBankAccount: "msg_add_bank_account".tr, onTapAddBankAccount: () {onTapAddBankAccount();})), SizedBox(height: 35.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 8.h), child: _buildAddBankAccount(image: ImageConstant.imgWithdrawalLimit, addBankAccount: "lbl_withdraw_fund".tr, onTapAddBankAccount: () {onTapThirtyTwo();})), SizedBox(height: 35.v), Padding(padding: EdgeInsets.only(right: 12.h), child: _buildAddBankAccount(image: ImageConstant.imgGraph, addBankAccount: "msg_transaction_detail".tr, onTapAddBankAccount: () {onTapTwentyNine();})), SizedBox(height: 5.v)])))); }
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_funds".tr, margin: EdgeInsets.only(left: 13.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgWallet, margin: EdgeInsets.fromLTRB(24.h, 18.v, 17.h, 2.v)), AppbarSubtitleOne(text: "lbl_10".tr, margin: EdgeInsets.only(top: 18.v, right: 41.h))]); }
/// Common widget
Widget _buildAddBankAccount({required String image, required String addBankAccount, Function? onTapAddBankAccount, }) { return GestureDetector(onTap: () {onTapAddBankAccount!.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 2.v), decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.circleBorder22), child: Row(mainAxisSize: MainAxisSize.max, children: [CustomImageView(imagePath: image, height: 43.v, width: 38.h), Padding(padding: EdgeInsets.only(left: 13.h, top: 12.v, bottom: 12.v), child: Text(addBankAccount, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.black900)))]))); }

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); }
/// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
onTapThirtyFour() { Get.toNamed(AppRoutes.androidLargeTwentyeightScreen, ); }
/// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
onTapAddBankAccount() { Get.toNamed(AppRoutes.androidLargeTwentyeightScreen, ); }
/// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
onTapThirtyTwo() { Get.toNamed(AppRoutes.androidLargeTwentyeightScreen, ); }
/// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
onTapTwentyNine() { Get.toNamed(AppRoutes.androidLargeTwentyeightScreen, ); }
 }
