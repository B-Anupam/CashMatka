import 'controller/android_large_nineteen_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/core/utils/validation_functions.dart';
import 'package:matka/widgets/app_bar/appbar_leading_image.dart';
import 'package:matka/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:matka/widgets/app_bar/appbar_title.dart';
import 'package:matka/widgets/app_bar/appbar_trailing_image.dart';
import 'package:matka/widgets/app_bar/custom_app_bar.dart';
import 'package:matka/widgets/custom_drop_down.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:matka/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeNineteenScreen
    extends GetWidget<AndroidLargeNineteenController> {
  AndroidLargeNineteenScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: Container(
                    width: 360.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 39.h, vertical: 20.v),
                    child: Column(children: [
                      _buildAmountField(),
                      SizedBox(height: 37.v),
                      CustomDropDown(
                          icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 15.v, 17.h, 13.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgExpandArrow,
                                  height: 19.v,
                                  width: 22.h)),
                          hintText: "lbl_gpay2".tr,
                          items: controller.androidLargeNineteenModelObj.value
                              .dropdownItemList!.value,
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      SizedBox(height: 11.v),
                      _buildNameField(),
                      SizedBox(height: 11.v),
                      _buildPaytmNumberField(),
                      SizedBox(height: 26.v),
                      _buildSubmitButton(),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 23.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_withdraw".tr, margin: EdgeInsets.only(left: 23.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgWallet,
              margin: EdgeInsets.fromLTRB(32.h, 20.v, 15.h, 2.v)),
          AppbarSubtitleOne(
              text: "lbl_10".tr,
              margin: EdgeInsets.only(top: 20.v, right: 47.h))
        ]);
  }

  /// Section Widget
  Widget _buildAmountField() {
    return CustomTextFormField(
        controller: controller.amountFieldController,
        hintText: "lbl_enter_amount".tr,
        hintStyle: CustomTextStyles.bodyMediumRobotoRegular,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 2.v, 7.h, 2.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgWithdrawalLimit,
                height: 43.v,
                width: 38.h)),
        prefixConstraints: BoxConstraints(maxHeight: 47.v),
        contentPadding: EdgeInsets.only(top: 15.v, right: 12.h, bottom: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
  }

  /// Section Widget
  Widget _buildNameField() {
    return CustomTextFormField(
        controller: controller.nameFieldController,
        hintText: "msg_account_holder_name".tr,
        hintStyle: CustomTextStyles.bodyMediumRobotoBlack900Regular,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
  }

  /// Section Widget
  Widget _buildPaytmNumberField() {
    return CustomTextFormField(
        controller: controller.paytmNumberFieldController,
        hintText: "lbl_paytm_number".tr,
        hintStyle: CustomTextStyles.bodyMediumRobotoBlack900Regular,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.number,
        validator: (value) {
          if (!isNumeric(value)) {
            return "err_msg_please_enter_valid_number".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
  }

  /// Section Widget
  Widget _buildSubmitButton() {
    return CustomElevatedButton(
        text: "lbl_submit".tr, margin: EdgeInsets.symmetric(horizontal: 14.h));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
