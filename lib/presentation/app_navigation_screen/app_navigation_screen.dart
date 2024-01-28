import 'controller/app_navigation_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "login page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "signup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Otp Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "reset password Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.resetPasswordTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "reset password One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.resetPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "reset password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "deposite page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.depositePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - TwentyThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeTwentythreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "menu".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.menuScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "bet Seventeen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.betSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "bet Eighteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.betEighteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "bet1 ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bet1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "bet3  - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bet3TabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "betSix".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.betsixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "betSeven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.betsevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "bet Eight - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.betEightTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "bet Nine - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.betNineTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Frame ThirtyTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frameThirtytwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Frame FortyOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frameFortyoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - Thirty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeThirtyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Android Large - TwentyFour - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .androidLargeTwentyfourTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - TwentyFive".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeTwentyfiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - TwentySix".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeTwentysixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - TwentySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeTwentysevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - TwentyEight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeTwentyeightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - TwentyNine".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeTwentynineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - Seventeen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - Eighteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeEighteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - TwentyTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeTwentytwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - Nineteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeNineteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - Twenty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeTwentyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Android Large - TwentyOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeTwentyoneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
