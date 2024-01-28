import 'package:matka/presentation/home_page_screen/controller/home_page_controller.dart';
import 'package:matka/widgets/custom_elevated_button.dart';

import '../deposite_page_screen/widgets/framethirteen_item_widget.dart';
import 'controller/deposite_page_controller.dart';
import 'models/framethirteen_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/app_bar/appbar_leading_image.dart';
import 'package:matka/widgets/app_bar/appbar_subtitle.dart';
import 'package:matka/widgets/app_bar/custom_app_bar.dart';
import 'package:matka/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class DepositePageScreen extends GetWidget<DepositePageController> {
  const DepositePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homePageController = Get.put(HomePageController());
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: _buildAppBar(),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 27.v),
                  child: Column(children: [
                    SizedBox(height: 13.v),
                    _buildAvailableBalance(),
                    SizedBox(height: 33.v),
                    _buildAddFundRequest(),
                    SizedBox(height: 45.v),
                    // _buildFrameTen()
                    CustomElevatedButton(
                      text: "Add Fund",
                      onPressed: () {
                        if (int.parse(controller.amountController.text) > 499) {
                          controller.addPoints();
                        } else {
                          Get.snackbar(
                              "Error", "Amount should be greater than 500",
                              colorText: Colors.white,
                              backgroundColor: Colors.red);
                        }
                      },
                    )
                  ])),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_deposit_fund".tr, margin: EdgeInsets.only(left: 21.h)));
  }

  /// Section Widget
  Widget _buildAvailableBalance() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 73.h, vertical: 14.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("msg_available_balance".tr,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: Colors.black)),
              SizedBox(height: 11.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                        padding: EdgeInsets.only(left: 0.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCurrencyRupeeInr,
                              height: 20.adaptSize,
                              width: 20.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: GetBuilder<HomePageController>(
                                init: HomePageController(),
                                initState: (_) {},
                                builder: (_) {
                                  return Text(
                                      "${HomePageController.user.points ?? 0}",
                                      style: CustomTextStyles
                                          .bodyMediumRobotoRegular_1);
                                },
                              ))
                        ])),
                  ),
                ],
              ),
              SizedBox(height: 19.v)
            ]));
  }

  /// Section Widget
  Widget _buildAddFundRequest() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Column(children: [
          Text("msg_add_fund_request".tr, style: theme.textTheme.titleLarge),
          SizedBox(height: 17.v),
          GetBuilder<DepositePageController>(
            init: DepositePageController(),
            initState: (_) {},
            builder: (_) {
              return CustomTextFormField(
                  textInputType: TextInputType.number,
                  controller: controller.amountController,
                  hintText: "lbl_enter_amount".tr,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 14.v, 1.h, 13.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCurrencyRupeeInr,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 47.v),
                  contentPadding:
                      EdgeInsets.only(top: 15.v, right: 12.h, bottom: 15.v),
                  borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
            },
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  child: FramethirteenItemWidget(
                    "500",
                  ),
                  onTap: () {
                    controller.ontapChip("500");
                  }),
              GestureDetector(
                  child: FramethirteenItemWidget(
                    "1000",
                  ),
                  onTap: () {
                    controller.ontapChip("1000");
                  }),
              GestureDetector(
                  child: FramethirteenItemWidget(
                    "2000",
                  ),
                  onTap: () {
                    controller.ontapChip("2000");
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  child: FramethirteenItemWidget(
                    "5000",
                  ),
                  onTap: () {
                    controller.ontapChip("5000");
                  }),
              GestureDetector(
                  child: FramethirteenItemWidget(
                    "10000",
                  ),
                  onTap: () {
                    controller.ontapChip("10000");
                  }),
              GestureDetector(
                  child: FramethirteenItemWidget(
                    "20000",
                  ),
                  onTap: () {
                    controller.ontapChip("20000");
                  }),
            ],
          )
        ]));
  }

  /// Section Widget
  Widget _buildFrameTen() {
    return Container(
        margin: EdgeInsets.only(left: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: _buildGooglePay(
                  googlePayImage: ImageConstant.imgImage5,
                  gPayText: "lbl_phone_pe".tr)),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: _buildGooglePay(
                  googlePayImage: ImageConstant.imgGooglePay,
                  gPayText: "lbl_g_pay".tr)),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: _buildGooglePay(
                  googlePayImage: ImageConstant.imgImage7,
                  gPayText: "lbl_paytm".tr)),
          SizedBox(height: 16.v),
          Container(
              margin: EdgeInsets.only(right: 6.h),
              padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage8,
                        height: 28.v,
                        width: 44.h),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 10.h, top: 3.v, bottom: 4.v),
                        child: Text("lbl_upi".tr,
                            style: CustomTextStyles.bodyLargeLight))
                  ])),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: _buildGooglePay(
                  googlePayImage: ImageConstant.imgImage9,
                  gPayText: "lbl_net_banking".tr))
        ]));
  }

  /// Common widget
  Widget _buildGooglePay({
    required String googlePayImage,
    required String gPayText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: googlePayImage,
              height: 35.adaptSize,
              width: 35.adaptSize,
              margin: EdgeInsets.only(top: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 8.v, bottom: 7.v),
              child: Text(gPayText,
                  style: CustomTextStyles.bodyLargeLight
                      .copyWith(color: appTheme.black900)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
