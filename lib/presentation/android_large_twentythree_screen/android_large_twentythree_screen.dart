import '../android_large_twentythree_screen/widgets/userprofile1_item_widget.dart';
import 'controller/android_large_twentythree_controller.dart';
import 'models/userprofile1_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/app_bar/appbar_leading_image.dart';
import 'package:matka/widgets/app_bar/appbar_subtitle.dart';
import 'package:matka/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentythreeScreen
    extends GetWidget<AndroidLargeTwentythreeController> {
  const AndroidLargeTwentythreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 28.h, top: 20.v, right: 44.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 143.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 73.h,
                        crossAxisSpacing: 73.h),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.androidLargeTwentythreeModelObj.value
                        .userprofile1ItemList.value.length,
                    itemBuilder: (context, index) {
                      Userprofile1ItemModel model = controller
                          .androidLargeTwentythreeModelObj
                          .value
                          .userprofile1ItemList
                          .value[index];
                      return Userprofile1ItemWidget(model, onTapWidget: () {
                        onTapWidget();
                      });
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_kalka_morning".tr, margin: EdgeInsets.only(left: 28.h)));
  }

  /// Navigates to the bet3TabContainerScreen when the action is triggered.
  onTapWidget() {
    Get.toNamed(AppRoutes.bet3TabContainerScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
