import '../bet3_tab_container_screen/widgets/radiorow_item_widget.dart';import 'controller/bet3_tab_container_controller.dart';import 'models/radiorow_item_model.dart';import 'package:matka/core/app_export.dart';import 'package:matka/presentation/bet3_page/bet3_page.dart';import 'package:matka/widgets/app_bar/appbar_leading_image.dart';import 'package:matka/widgets/app_bar/appbar_subtitle_one.dart';import 'package:matka/widgets/app_bar/appbar_trailing_image.dart';import 'package:matka/widgets/app_bar/custom_app_bar.dart';import 'package:matka/widgets/custom_elevated_button.dart';import 'package:matka/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';class Bet3TabContainerScreen extends GetWidget<Bet3TabContainerController> {const Bet3TabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: 360.h, child: Column(children: [SizedBox(height: 35.v), _buildCloseRow(), SizedBox(height: 21.v), _buildRadioRow(), SizedBox(height: 28.v), _buildBetDigitColumn(), SizedBox(height: 34.v), _buildTabview(), _buildTabBarView()])))); }
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 32.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgWallet, margin: EdgeInsets.only(left: 32.h, top: 15.v, right: 15.h)), AppbarSubtitleOne(text: "lbl_10".tr, margin: EdgeInsets.only(left: 2.h, top: 19.v, right: 47.h))]); }
/// Section Widget
Widget _buildCloseRow() { return Padding(padding: EdgeInsets.only(left: 38.h, right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text("msg_select_game_type".tr, style: theme.textTheme.titleLarge)), CustomOutlinedButton(width: 120.h, text: "lbl_close".tr, margin: EdgeInsets.only(left: 24.h))])); }
/// Section Widget
Widget _buildRadioRow() { return SizedBox(height: 20.v, child: Obx(() => ListView.separated(padding: EdgeInsets.symmetric(horizontal: 42.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 1.h);}, itemCount: controller.bet3TabContainerModelObj.value.radiorowItemList.value.length, itemBuilder: (context, index) {RadiorowItemModel model = controller.bet3TabContainerModelObj.value.radiorowItemList.value[index]; return RadiorowItemWidget(model);}))); }
/// Section Widget
Widget _buildBetDigitColumn() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Padding(padding: EdgeInsets.only(left: 12.h, right: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text("msg_enter_single_digit".tr, style: theme.textTheme.titleLarge)), CustomOutlinedButton(width: 120.h, text: "lbl_bet_digit".tr)])), SizedBox(height: 17.v), Padding(padding: EdgeInsets.only(left: 12.h, right: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 4.v), child: Text("lbl_enter_points2".tr, style: theme.textTheme.titleLarge)), CustomOutlinedButton(width: 120.h, text: "lbl_enter_amount2".tr)])), SizedBox(height: 23.v), CustomElevatedButton(height: 30.v, width: 120.h, text: "lbl_add_bet".tr, buttonStyle: CustomButtonStyles.outlineBlackTL51, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700, alignment: Alignment.centerRight)])); }
/// Section Widget
Widget _buildTabview() { return Container(height: 23.v, width: double.maxFinite, child: TabBar(controller: controller.tabviewController, isScrollable: true, tabs: [Tab(child: Text("lbl_digit".tr)), Tab(child: Text("lbl_amount".tr)), Tab(child: Text("lbl_game_type".tr))])); }
/// Section Widget
Widget _buildTabBarView() { return SizedBox(height: 398.v, child: TabBarView(controller: controller.tabviewController, children: [Bet3Page(), Bet3Page(), Bet3Page()])); }

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); }
 }