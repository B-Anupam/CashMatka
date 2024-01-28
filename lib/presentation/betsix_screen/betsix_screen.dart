import '../betsix_screen/widgets/betsix_item_widget.dart';import 'controller/betsix_controller.dart';import 'models/betsix_item_model.dart';import 'package:matka/core/app_export.dart';import 'package:matka/widgets/custom_elevated_button.dart';import 'package:matka/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class BetsixScreen extends GetWidget<BetsixController> {const BetsixScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: 360.h, child: Column(children: [SizedBox(height: 42.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 83.v), child: Column(children: [_buildArrowLeftRow(), SizedBox(height: 29.v), SizedBox(height: 2078.v, width: 310.h, child: Stack(alignment: Alignment.bottomCenter, children: [_buildEditTextColumn(), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(left: 80.h, right: 80.h, bottom: 239.v), child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_550".tr, style: theme.textTheme.bodyLarge), Text("lbl_668".tr, style: theme.textTheme.bodyLarge)])), SizedBox(height: 8.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildEditTextRow(), _buildEditTextRow1()])]))), _buildEditTextColumn1(), _buildEditTextColumn2(), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.fromLTRB(20.h, 1860.v, 20.h, 198.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_299".tr, style: theme.textTheme.bodyLarge), Spacer(flex: 35), Text("lbl_266".tr, style: theme.textTheme.bodyLarge), Spacer(flex: 31), Text("lbl_488".tr, style: theme.textTheme.bodyLarge), Spacer(flex: 33), Text("lbl_677".tr, style: theme.textTheme.bodyLarge)]))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 150.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildEditTextRow2(), _buildEditTextRow3()]))), _buildEditTextColumn3(), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 20.h, bottom: 109.v), child: Row(children: [Text("lbl_118".tr, style: theme.textTheme.bodyLarge), Padding(padding: EdgeInsets.only(left: 55.h), child: Text("lbl_334".tr, style: theme.textTheme.bodyLarge))]))), Align(alignment: Alignment.center, child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_100".tr, style: theme.textTheme.bodyLarge), Text("lbl_119".tr, style: theme.textTheme.bodyLarge), Text("lbl_155".tr, style: theme.textTheme.bodyLarge), Text("lbl_227".tr, style: theme.textTheme.bodyLarge)])), SizedBox(height: 8.v), _buildEditText(), SizedBox(height: 20.v), Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_335".tr, style: theme.textTheme.bodyLarge), Text("lbl_344".tr, style: theme.textTheme.bodyLarge), Text("lbl_399".tr, style: theme.textTheme.bodyLarge), Text("lbl_588".tr, style: theme.textTheme.bodyLarge)])), SizedBox(height: 8.v), _buildBetSix()]))])), SizedBox(height: 39.v), _buildSubmit()]))))])))); }
/// Section Widget
Widget _buildArrowLeftRow() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgArrowLeft();}), Spacer(), CustomImageView(imagePath: ImageConstant.imgWallet, height: 25.adaptSize, width: 25.adaptSize), Padding(padding: EdgeInsets.only(left: 2.h, top: 4.v), child: Text("lbl_10".tr, style: theme.textTheme.bodyLarge))]); }
/// Section Widget
Widget _buildEditTextColumn() { return Padding(padding: EdgeInsets.only(bottom: 239.v), child: CustomTextFormField(width: 70.h, controller: controller.editTextColumnController, alignment: Alignment.bottomLeft)); }
/// Section Widget
Widget _buildEditTextRow() { return Expanded(child: Padding(padding: EdgeInsets.only(right: 5.h), child: CustomTextFormField(controller: controller.editTextRowController))); }
/// Section Widget
Widget _buildEditTextRow1() { return Expanded(child: Padding(padding: EdgeInsets.only(left: 5.h), child: CustomTextFormField(controller: controller.editTextRowController1))); }
/// Section Widget
Widget _buildEditTextColumn1() { return Padding(padding: EdgeInsets.only(bottom: 239.v), child: CustomTextFormField(width: 70.h, controller: controller.editTextColumnController1, alignment: Alignment.bottomRight)); }
/// Section Widget
Widget _buildEditTextColumn2() { return Padding(padding: EdgeInsets.only(bottom: 150.v), child: CustomTextFormField(width: 70.h, controller: controller.editTextColumnController2, alignment: Alignment.bottomLeft)); }
/// Section Widget
Widget _buildEditTextRow2() { return CustomTextFormField(width: 70.h, controller: controller.editTextRowController2); }
/// Section Widget
Widget _buildEditTextRow3() { return Padding(padding: EdgeInsets.only(left: 10.h), child: CustomTextFormField(width: 70.h, controller: controller.editTextRowController3)); }
/// Section Widget
Widget _buildEditTextColumn3() { return Padding(padding: EdgeInsets.only(bottom: 150.v), child: CustomTextFormField(width: 70.h, controller: controller.editTextColumnController3, alignment: Alignment.bottomRight)); }
/// Section Widget
Widget _buildEditTextRow4() { return Expanded(child: Padding(padding: EdgeInsets.only(right: 5.h), child: CustomTextFormField(controller: controller.editTextRowController4))); }
/// Section Widget
Widget _buildEditTextRow5() { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.h), child: CustomTextFormField(controller: controller.editTextRowController5))); }
/// Section Widget
Widget _buildEditTextRow6() { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.h), child: CustomTextFormField(controller: controller.editTextRowController6))); }
/// Section Widget
Widget _buildEditTextRow7() { return Expanded(child: Padding(padding: EdgeInsets.only(left: 5.h), child: CustomTextFormField(controller: controller.editTextRowController7))); }
/// Section Widget
Widget _buildEditText() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildEditTextRow4(), _buildEditTextRow5(), _buildEditTextRow6(), _buildEditTextRow7()]); }
/// Section Widget
Widget _buildBetSix() { return Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 81.v, crossAxisCount: 4, mainAxisSpacing: 10.h, crossAxisSpacing: 10.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.betsixModelObj.value.betsixItemList.value.length, itemBuilder: (context, index) {BetsixItemModel model = controller.betsixModelObj.value.betsixItemList.value[index]; return BetsixItemWidget(model);})); }
/// Section Widget
Widget _buildSubmit() { return CustomElevatedButton(text: "lbl_submit".tr, margin: EdgeInsets.only(left: 29.h, right: 28.h)); }

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); }
 }
