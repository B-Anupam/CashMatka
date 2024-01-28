import 'package:matka/presentation/frame_thirtytwo_screen/frame_thirtytwo_screen.dart';
import 'package:matka/presentation/home_page_screen/models/games_model.dart';
import 'package:matka/presentation/menu_screen/menu_screen.dart';
import 'package:matka/widgets/drawer_widget.dart';
import '../home_page_screen/widgets/frametwentyfour_item_widget.dart';
import '../home_page_screen/widgets/userprofile_item_widget.dart';
import 'controller/home_page_controller.dart';
import 'models/frametwentyfour_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/app_bar/appbar_leading_image.dart';
import 'package:matka/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:matka/widgets/app_bar/appbar_trailing_image.dart';
import 'package:matka/widgets/app_bar/custom_app_bar.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/games_widget.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  HomePageScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _key,
            backgroundColor: theme.colorScheme.background,
            appBar: _buildAppBar(_key),
            drawer: Drawer(
              child: DrawerWidget(),
            ),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: GetBuilder<HomePageController>(
                        init: HomePageController(),
                        initState: (_) {},
                        builder: (_) {
                          return Padding(
                              padding: EdgeInsets.only(left: 31.h),
                              child: Text(
                                  "Hello " +
                                      "${HomePageController.user.username ?? ""}",
                                  style: CustomTextStyles.bodyLargeRoboto));
                        },
                      )),
                  SizedBox(height: 28.v),
                  _buildFrameTwentyFour(),
                  SizedBox(height: 6.v),
                  Obx(() => SizedBox(
                      height: 7.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: controller.sliderIndex.value,
                          count: controller.homePageModelObj.value
                              .frametwentyfourItemList.value.length,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                              spacing: 10,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.whiteA700,
                              dotHeight: 7.v,
                              dotWidth: 7.h)))),
                  SizedBox(height: 17.v),
                  //   _buildMAINSTARLINE(),
                  SizedBox(height: 28.v),
                  _buildUserProfile()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(_key) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgSettingsBlack900,
            margin: EdgeInsets.only(left: 23.h, top: 16.v, bottom: 18.v),
            onTap: () {
              _key.currentState!.openDrawer();
            }),
        actions: [
          AppbarTrailingImage(
              // imagePath: ImageConstant.imgWallet,
              margin: EdgeInsets.only(left: 28.h, top: 15.v, right: 15.h),
              onTap: () {
                onTapWallet();
              }),
          GetBuilder<HomePageController>(
            init: HomePageController(),
            initState: (_) {},
            builder: (_) {
              return AppbarSubtitleOne(
                  text: "${HomePageController.user.points ?? 0}",
                  margin: EdgeInsets.only(left: 2.h, top: 19.v, right: 43.h),
                  onTap: () {
                    onTapTen();
                  });
            },
          )
        ]);
  }

  /// Section Widget
  Widget _buildFrameTwentyFour() {
    return Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: Obx(() => CarouselSlider.builder(
            options: CarouselOptions(
                height: 104.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  controller.sliderIndex.value = index;
                }),
            itemCount: controller
                .homePageModelObj.value.frametwentyfourItemList.value.length,
            itemBuilder: (context, index, realIndex) {
              FrametwentyfourItemModel model = controller
                  .homePageModelObj.value.frametwentyfourItemList.value[index];
              return FrametwentyfourItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildMAINSTARLINE() {
    return CustomElevatedButton(
        height: 40.v,
        width: 142.h,
        text: "lbl_main_starline".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 7.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 25.adaptSize,
                width: 25.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.labelLargeMedium,
        onPressed: () {
          onTapMAINSTARLINE();
        });
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Expanded(
        child: GetBuilder<HomePageController>(
      init: HomePageController(),
      initState: (_) {},
      builder: (_) {
        return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: controller.gamesListModelObj.length,
                itemBuilder: (context, index) {
                  GamesListModel model = controller.gamesListModelObj[index];
                  return GamesWidget(model);
                }));
      },
    ));
  }

  /// Navigates to the frameThirtytwoScreen when the action is triggered.
  onTapPlayButton() {
    // Get.toNamed(AppRoutes.frameThirtytwoScreen);
    Get.dialog(FrameThirtyTwoWidget());
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapSettings() {
    // Get.toNamed(
    //   AppRoutes.menuScreen,
    // );
  }

  /// Navigates to the depositePageScreen when the action is triggered.
  onTapWallet() {
    Get.toNamed(
      AppRoutes.depositePageScreen,
    );
  }

  /// Navigates to the depositePageScreen when the action is triggered.
  onTapTen() {
    Get.toNamed(
      AppRoutes.depositePageScreen,
    );
  }

  /// Navigates to the androidLargeTwentynineScreen when the action is triggered.
  onTapMAINSTARLINE() {
    // Get.toNamed(
    //   AppRoutes.androidLargeTwentynineScreen,
    // );
  }
}
