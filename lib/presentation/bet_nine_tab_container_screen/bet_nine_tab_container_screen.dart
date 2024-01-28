import 'controller/bet_nine_tab_container_controller.dart';import 'package:matka/core/app_export.dart';import 'package:matka/presentation/bet_nine_page/bet_nine_page.dart';import 'package:matka/widgets/app_bar/appbar_leading_image.dart';import 'package:matka/widgets/app_bar/appbar_subtitle_one.dart';import 'package:matka/widgets/app_bar/appbar_trailing_image.dart';import 'package:matka/widgets/app_bar/custom_app_bar.dart';import 'package:matka/widgets/custom_elevated_button.dart';import 'package:matka/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class BetNineTabContainerScreen extends GetWidget<BetNineTabContainerController> {const BetNineTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: 360.h, child: Column(children: [SizedBox(height: 22.v), _buildEditTextRow1(), SizedBox(height: 17.v), _buildEditTextRow2(), SizedBox(height: 18.v), _buildEditTextRow3(), SizedBox(height: 17.v), _buildAddBetButton(), SizedBox(height: 29.v), _buildTabview(), SizedBox(height: 460.v, child: TabBarView(controller: controller.tabviewController, children: [BetNinePage(), BetNinePage(), BetNinePage(), BetNinePage()]))])))); }
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 55.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 31.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgWallet, margin: EdgeInsets.only(left: 33.h, top: 15.v, right: 15.h)), AppbarSubtitleOne(text: "lbl_10".tr, margin: EdgeInsets.only(left: 2.h, top: 19.v, right: 48.h))]); }
/// Section Widget
Widget _buildEditText() { return CustomTextFormField(width: 120.h, controller: controller.editTextController, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL15); }
/// Section Widget
Widget _buildEditTextRow1() { return Padding(padding: EdgeInsets.only(left: 38.h, right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text("lbl_open_pana2".tr, style: theme.textTheme.titleLarge)), _buildEditText()])); }
/// Section Widget
Widget _buildEditText1() { return CustomTextFormField(width: 120.h, controller: controller.editTextController1, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL15); }
/// Section Widget
Widget _buildEditTextRow2() { return Padding(padding: EdgeInsets.only(left: 38.h, right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 4.v), child: Text("lbl_close_pana".tr, style: theme.textTheme.titleLarge)), _buildEditText1()])); }
/// Section Widget
Widget _buildEditText2() { return CustomTextFormField(width: 120.h, controller: controller.editTextController2, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL15); }
/// Section Widget
Widget _buildEditTextRow3() { return Padding(padding: EdgeInsets.only(left: 38.h, right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 4.v), child: Text("lbl_enter_points2".tr, style: theme.textTheme.titleLarge)), _buildEditText2()])); }
/// Section Widget
Widget _buildAddBetButton() { return CustomElevatedButton(height: 30.v, width: 120.h, text: "lbl_add_bet".tr, margin: EdgeInsets.only(right: 24.h), buttonStyle: CustomButtonStyles.outlineBlackTL51, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700, alignment: Alignment.centerRight); }
/// Section Widget
Widget _buildTabview() { return Container(height: 40.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.black900.withOpacity(0.25)), child: TabBar(controller: controller.tabviewController, isScrollable: true, tabs: [Tab(child: Text("lbl_game_type".tr)), Tab(child: Text("lbl_open_pana".tr)), Tab(child: Text("lbl_close_pana2".tr)), Tab(child: Text("lbl_amount".tr))])); }

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); }
 }
