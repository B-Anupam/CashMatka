import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_history/bet_history_page.dart';
import 'package:matka/presentation/home_page_screen/controller/home_page_controller.dart';
// import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget DrawerWidget() {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(children: [
      Padding(
          padding: EdgeInsets.only(left: 22.h, right: 31.h),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(21.h)),
            GetBuilder<HomePageController>(
              init: HomePageController(),
              initState: (_) {},
              builder: (_) {
                return Container(
                    // width: 84.h,
                    margin: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 3.v),
                    child: Text(
                        "${HomePageController.user.username}\n ${HomePageController.user.mobile}"
                            .tr,
                        maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumRoboto_1));
              },
            )
          ])),
      SizedBox(height: 47.v),
      Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgHome,
                height: 25.v,
                width: 26.h,
                onTap: () {
                  onTapImgHome();
                }),
            GestureDetector(
                onTap: () {
                  onTapTxtHome();
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 20.h, top: 3.v, bottom: 3.v),
                    child: Text("lbl_home".tr,
                        style: CustomTextStyles.bodyMediumRobotoRegular_1)))
          ])),
      SizedBox(height: 17.v),
      Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Row(children: [
            // CustomImageView(
            //     imagePath: ImageConstant.imgDice,
            //     height: 40.v,
            //     width: 35.h,
            //     onTap: () {
            //       //   onTapImgDice();
            //     }),
            Icon(
              Icons.history,
              size: 30,
            ),
            GestureDetector(
                onTap: () {
                  onTapTxtMyBets();
                },
                child: Padding(
                    padding:
                        EdgeInsets.only(left: 14.h, top: 11.v, bottom: 10.v),
                    child: Text("Game History".tr,
                        style: CustomTextStyles.bodyMediumRobotoRegular_1)))
          ])),
      SizedBox(height: 15.v),
      Padding(
          padding: EdgeInsets.only(left: 3.h, right: 49.h),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgImg3,
                height: 30.adaptSize,
                width: 30.adaptSize,
                onTap: () {
                  onTapImgImgThree();
                }),
            GestureDetector(
                onTap: () {
                  onTapTxtDepositFund();
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 17.h, top: 6.v, bottom: 5.v),
                    child: Text("lbl_deposit_fund".tr,
                        style: CustomTextStyles.bodyMediumRobotoRegular_1)))
          ])),
      SizedBox(height: 14.v),
      Padding(
          padding: EdgeInsets.only(right: 37.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomImageView(
                imagePath: ImageConstant.imgWithdrawalLimit,
                height: 43.v,
                width: 38.h,
                onTap: () {
                  onTapImgWithdrawalLimit();
                }),
            GestureDetector(
                onTap: () {
                  onTapTxtWithdrawFund();
                },
                child: Padding(
                    padding:
                        EdgeInsets.only(left: 12.h, top: 11.v, bottom: 13.v),
                    child: Text("lbl_withdraw_fund".tr,
                        style: CustomTextStyles.bodyMediumRobotoRegular_1)))
          ])),
      SizedBox(height: 11.v),
      // Padding(
      //     padding: EdgeInsets.only(left: 4.h),
      //     child: _buildImgOneSection(
      //         userImage: ImageConstant.imgCashbook,
      //         shareNow: "lbl_bet_history".tr,
      //         onTapImgOne: () {
      //           onTapCashbook();
      //         },
      //         onTapShareNow: () {
      //           onTapTxtBetHistory();
      //         })),
      //   SizedBox(height: 17.v),
      //   Padding(
      //       padding: EdgeInsets.only(left: 4.h),
      //       child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //         CustomImageView(
      //             imagePath: ImageConstant.imgAdd,
      //             height: 30.adaptSize,
      //             width: 30.adaptSize,
      //             onTap: () {
      //               onTapImgAdd();
      //             }),
      //         GestureDetector(
      //             onTap: () {
      //               onTapTxtFunds();
      //             },
      //             child: Padding(
      //                 padding: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 6.v),
      //                 child: Text("lbl_funds".tr,
      //                     style: CustomTextStyles.bodyMediumRobotoRegular_1)))
      //       ])),
      //   SizedBox(height: 20.v),
      //   Padding(
      //       padding: EdgeInsets.only(left: 4.h),
      //       child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //         CustomImageView(
      //             imagePath: ImageConstant.imgImg2,
      //             height: 30.adaptSize,
      //             width: 30.adaptSize),
      //         Padding(
      //             padding: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 6.v),
      //             child: Text("lbl_videos".tr,
      //                 style: CustomTextStyles.bodyMediumRobotoRegular_1))
      //       ])),
      //   SizedBox(height: 20.v),
      Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Row(children: [
            // CustomImageView(
            //     imagePath: ImageConstant.imgGameController,
            //     height: 30.adaptSize,
            //     width: 30.adaptSize,
            //     onTap: () {
            //       onTapImgGameController();
            //     }),
            Icon(Icons.currency_rupee),
            GestureDetector(
                onTap: () {
                  onTapTxtGameRate();
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 17.h, top: 5.v, bottom: 6.v),
                    child: Text("lbl_game_rate".tr,
                        style: CustomTextStyles.bodyMediumRobotoRegular_1)))
          ])),
      SizedBox(height: 26.v),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Row(children: [
            // CustomImageView(
            //     imagePath: ImageConstant.imgSearch,
            //     height: 25.v,
            //     width: 24.h,
            //     onTap: () {
            //       onTapImgSearch();
            //     }),
            Icon(Icons.share),
            GestureDetector(
                onTap: () {
                  onTapTxtSetting();
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 19.h, top: 5.v),
                    child: Text("Share Now".tr,
                        style: CustomTextStyles.bodyMediumRobotoRegular_1)))
          ])),
      SizedBox(height: 22.v),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomImageView(
                imagePath: ImageConstant.imgShare,
                height: 30.adaptSize,
                width: 30.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 6.v),
                child: Text("lbl_refer_earn".tr,
                    style: CustomTextStyles.bodyMediumRobotoRegular_1))
          ])),
      SizedBox(height: 20.v),
      // Padding(
      //     padding: EdgeInsets.only(left: 3.h),
      //     child: _buildImgOneSection(
      //         userImage: ImageConstant.imgImg1, shareNow: "lbl_share_now".tr)),
      SizedBox(height: 22.v),
      Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 25.v,
                width: 21.h,
                onTap: () {
                  onTapImgThumbsUp();
                }),
            GestureDetector(
                onTap: () {
                  onTapTxtLogout();
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 21.h, top: 5.v),
                    child: Text("lbl_logout".tr,
                        style: CustomTextStyles.bodyMediumRobotoRegular_1)))
          ])),
      SizedBox(height: 5.v)
    ]),
  );
}

// Widget _buildImgOneSection({
//   required String userImage,
//   required String shareNow,
//   Function? onTapImgOne,
//   Function? onTapShareNow,
// }) {
//   return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//     CustomImageView(
//         imagePath: userImage,
//         height: 30.adaptSize,
//         width: 30.adaptSize,
//         onTap: () {
//           onTapImgOne!.call();
//         }),
//     GestureDetector(onTap: () {
//       onTapShareNow!.call();
//     }),
//     Padding(
//         padding: EdgeInsets.only(left: 17.h, top: 5.v, bottom: 6.v),
//         child: Text(shareNow,
//             style: CustomTextStyles.bodyMediumRobotoRegular_1
//                 .copyWith(color: appTheme.black900)))
//   ]);
// }

/// Navigates to the homePageScreen when the action is triggered.
onTapImgHome() {
  Get.toNamed(
    AppRoutes.homePageScreen,
  );
}

/// Navigates to the homePageScreen when the action is triggered.
onTapTxtHome() {
  Get.toNamed(
    AppRoutes.homePageScreen,
  );
}

/// Navigates to the androidLargeTwentysixScreen when the action is triggered.
onTapImgDice() {
  Get.toNamed(
    AppRoutes.androidLargeTwentysixScreen,
  );
}

/// Navigates to the androidLargeTwentysixScreen when the action is triggered.
onTapTxtMyBets() {
  Get.to(BetHistoryPage());
}

/// Navigates to the depositePageScreen when the action is triggered.
onTapImgImgThree() {
  Get.toNamed(
    AppRoutes.depositePageScreen,
  );
}

/// Navigates to the depositePageScreen when the action is triggered.
onTapTxtDepositFund() {
  Get.toNamed(
    AppRoutes.depositePageScreen,
  );
}

/// Navigates to the androidLargeTwentyfiveScreen when the action is triggered.
onTapImgWithdrawalLimit() {
  Get.toNamed(
    AppRoutes.androidLargeTwentyfiveScreen,
  );
}

/// Navigates to the androidLargeTwentyfiveScreen when the action is triggered.
onTapTxtWithdrawFund() {
  Get.toNamed(
    AppRoutes.androidLargeTwentyfiveScreen,
  );
}

/// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
onTapCashbook() {
  Get.toNamed(
    AppRoutes.androidLargeTwentyeightScreen,
  );
}

/// Navigates to the androidLargeTwentyeightScreen when the action is triggered.
onTapTxtBetHistory() {
  Get.toNamed(
    AppRoutes.androidLargeTwentyeightScreen,
  );
}

/// Navigates to the depositePageScreen when the action is triggered.
onTapImgAdd() {
  Get.toNamed(
    AppRoutes.depositePageScreen,
  );
}

/// Navigates to the androidLargeThirtyScreen when the action is triggered.
onTapTxtFunds() {
  Get.toNamed(
    AppRoutes.androidLargeThirtyScreen,
  );
}

/// Navigates to the androidLargeTwentytwoScreen when the action is triggered.
onTapImgGameController() {
  Get.toNamed(
    AppRoutes.androidLargeTwentytwoScreen,
  );
}

/// Navigates to the androidLargeTwentytwoScreen when the action is triggered.
onTapTxtGameRate() {
  Get.toNamed(
    AppRoutes.androidLargeTwentytwoScreen,
  );
}

/// Navigates to the androidLargeEighteenScreen when the action is triggered.
onTapImgSearch() {
//   Get.toNamed(
//     AppRoutes.androidLargeEighteenScreen,
//   );
}

/// Navigates to the androidLargeEighteenScreen when the action is triggered.
onTapTxtSetting() async {
//   await Share.share('check out my website https://example.com');
}

/// Navigates to the loginPageScreen when the action is triggered.
onTapImgThumbsUp() {
  Get.toNamed(
    AppRoutes.loginPageScreen,
  );
}

/// Navigates to the loginPageScreen when the action is triggered.
onTapTxtLogout() async {
  final pref = await SharedPreferences.getInstance();
  pref.clear();
  Get.toNamed(
    AppRoutes.loginPageScreen,
  );
}
