import 'controller/android_large_twentyone_controller.dart';import 'package:matka/core/app_export.dart';import 'package:matka/core/utils/validation_functions.dart';import 'package:matka/widgets/app_bar/appbar_leading_image.dart';import 'package:matka/widgets/app_bar/appbar_subtitle_one.dart';import 'package:matka/widgets/app_bar/appbar_title.dart';import 'package:matka/widgets/app_bar/appbar_trailing_image.dart';import 'package:matka/widgets/app_bar/custom_app_bar.dart';import 'package:matka/widgets/custom_drop_down.dart';import 'package:matka/widgets/custom_elevated_button.dart';import 'package:matka/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AndroidLargeTwentyoneScreen extends GetWidget<AndroidLargeTwentyoneController> {AndroidLargeTwentyoneScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: 360.h, padding: EdgeInsets.only(left: 39.h, top: 105.v, right: 39.h), child: Column(children: [CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 15.v, 17.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgExpandArrow, height: 19.v, width: 22.h)), hintText: "lbl_bank".tr, items: controller.androidLargeTwentyoneModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);}), SizedBox(height: 11.v), _buildNameEditText(), SizedBox(height: 11.v), _buildAccountNumberEditText(), SizedBox(height: 11.v), _buildIfscCodeEditText(), SizedBox(height: 11.v), _buildNameEditText1(), SizedBox(height: 31.v), _buildSubmitButton(), SizedBox(height: 5.v)]))))); }
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 47.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 23.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_withdraw".tr, margin: EdgeInsets.only(left: 23.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgWallet, margin: EdgeInsets.fromLTRB(32.h, 20.v, 15.h, 2.v)), AppbarSubtitleOne(text: "lbl_10".tr, margin: EdgeInsets.only(top: 20.v, right: 47.h))]); }
/// Section Widget
Widget _buildNameEditText() { return CustomTextFormField(controller: controller.nameEditTextController, hintText: "msg_account_holder_name".tr, hintStyle: CustomTextStyles.bodyMediumRobotoBlack900Regular, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 15.v), borderDecoration: TextFormFieldStyleHelper.fillWhiteA); }
/// Section Widget
Widget _buildAccountNumberEditText() { return CustomTextFormField(controller: controller.accountNumberEditTextController, hintText: "lbl_account_number".tr, hintStyle: CustomTextStyles.bodyMediumRobotoBlack900Regular, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v), borderDecoration: TextFormFieldStyleHelper.fillWhiteA); }
/// Section Widget
Widget _buildIfscCodeEditText() { return CustomTextFormField(controller: controller.ifscCodeEditTextController, hintText: "lbl_ifsc_code2".tr, hintStyle: CustomTextStyles.bodyMediumRobotoBlack900Regular, contentPadding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v), borderDecoration: TextFormFieldStyleHelper.fillWhiteA); }
/// Section Widget
Widget _buildNameEditText1() { return CustomTextFormField(controller: controller.nameEditTextController1, hintText: "lbl_bank_name".tr, hintStyle: CustomTextStyles.bodyMediumRobotoBlack900Regular, textInputAction: TextInputAction.done, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v), borderDecoration: TextFormFieldStyleHelper.fillWhiteA); }
/// Section Widget
Widget _buildSubmitButton() { return CustomElevatedButton(text: "lbl_submit".tr, margin: EdgeInsets.only(left: 13.h, right: 15.h)); }

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); }
 }
