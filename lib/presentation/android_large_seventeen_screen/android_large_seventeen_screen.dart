import 'package:matka/presentation/games/circle_patti/circle_patti_screen.dart';
import 'package:matka/presentation/games/double_digit/double_digit_screen.dart';
import 'package:matka/presentation/games/double_patti/double_patti_page.dart';
import 'package:matka/presentation/games/full_sangam/full_sangam_screen.dart';
import 'package:matka/presentation/games/single_digit/single_digit_page.dart';
import 'package:matka/presentation/games/triple_patti/triple_patti_screen.dart';
import 'package:matka/widgets/custom_elevated_button.dart';

import '../android_large_seventeen_screen/widgets/userprofile2_item_widget.dart';
import '../android_large_seventeen_screen/widgets/userprofile3_item_widget.dart';
import '../games/half_sangam/half_sangam_screen.dart';
import '../games/single_patti/single_patti_screen.dart';
import 'controller/android_large_seventeen_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'models/userprofile3_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/app_bar/appbar_leading_image.dart';
import 'package:matka/widgets/app_bar/appbar_title.dart';
import 'package:matka/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AndroidLargeSeventeenScreen
    extends GetWidget<AndroidLargeSeventeenController> {
  const AndroidLargeSeventeenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 39.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 35.h, right: 29.h, bottom: 5.v),
                        child: Column(children: [
                          _buildSingleDigits(args),
                          //   SizedBox(height: 34.v),
                          //   _buildUserProfile()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 35.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_select_game".tr, margin: EdgeInsets.only(left: 33.h)));
  }

  /// Section Widget
  Widget _buildSingleDigits(args) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(right: 3.h),
          child: GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            physics: NeverScrollableScrollPhysics(),
            children: [
              GestureDetector(
                onTap: () {
                  Get.dialog(Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      width: Get.width * 0.9,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomElevatedButton(
                            text: "Open",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  SingleDigitPage(
                                    type: "OSINGLE",
                                  ),
                                  arguments: args);
                            },
                          ),
                          CustomElevatedButton(
                            text: "Close",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  SingleDigitPage(
                                    type: "CSINGLE",
                                  ),
                                  arguments: args);
                            },
                          )
                        ],
                      ),
                    ),
                  ));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 120.v,
                        child: CircleAvatar(
                          radius: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              ImageConstant.imgFinger1,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text("Single Digit")
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                      DoubleDigitPage(
                        type: "JODI",
                      ),
                      arguments: args);
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 120.v,
                        child: CircleAvatar(
                          radius: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              ImageConstant.img47634731,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text("Jodi")
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.dialog(Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      width: Get.width * 0.9,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomElevatedButton(
                            text: "Open",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  SinglePattiScreen(
                                    type: "OSP",
                                  ),
                                  arguments: args);
                            },
                          ),
                          CustomElevatedButton(
                            text: "Close",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  SinglePattiScreen(
                                    type: "CSP",
                                  ),
                                  arguments: args);
                            },
                          )
                        ],
                      ),
                    ),
                  ));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 120.v,
                        child: CircleAvatar(
                          radius: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              ImageConstant.img92163561,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text("Single Panna")
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.dialog(Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      width: Get.width * 0.9,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomElevatedButton(
                            text: "Open",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  DoublePattiScreen(
                                    type: "ODP",
                                  ),
                                  arguments: args);
                            },
                          ),
                          CustomElevatedButton(
                            text: "Close",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  DoublePattiScreen(
                                    type: "CDP",
                                  ),
                                  arguments: args);
                            },
                          )
                        ],
                      ),
                    ),
                  ));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 120.v,
                        child: CircleAvatar(
                          radius: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              ImageConstant.img66127071,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text("Double Panna")
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.dialog(Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      width: Get.width * 0.9,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomElevatedButton(
                            text: "Open",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  TriplePattiScreen(
                                    type: "OTP",
                                  ),
                                  arguments: args);
                            },
                          ),
                          CustomElevatedButton(
                            text: "Close",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  TriplePattiScreen(
                                    type: "CTP",
                                  ),
                                  arguments: args);
                            },
                          )
                        ],
                      ),
                    ),
                  ));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 120.v,
                        child: CircleAvatar(
                          radius: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              ImageConstant.img462291,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text("Triple Panna")
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.dialog(Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                      width: Get.width * 0.9,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomElevatedButton(
                            text: "Open",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  CyclePattiScreen(
                                    type: "OCP",
                                  ),
                                  arguments: args);
                            },
                          ),
                          CustomElevatedButton(
                            text: "Close",
                            width: Get.width * 0.3,
                            onPressed: () {
                              Get.to(
                                  CyclePattiScreen(
                                    type: "CCP",
                                  ),
                                  arguments: args);
                            },
                          )
                        ],
                      ),
                    ),
                  ));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 120.v,
                        child: CircleAvatar(
                          radius: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              ImageConstant.img942031,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text("Cycle Patti")
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                      HalfSangamScreen(
                        type: "HS",
                      ),
                      arguments: args);
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 120.v,
                        child: CircleAvatar(
                          radius: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              ImageConstant.img4768631,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text("Half Sangam")
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                      FullSangamScreen(
                        type: "FS",
                      ),
                      arguments: args);
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 120.v,
                        child: CircleAvatar(
                          radius: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              ImageConstant.img338871,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text("Full Sangam")
                    ],
                  ),
                ),
              )
            ],
          )),
      SizedBox(height: 6.v),
      //   Padding(
      //       padding: EdgeInsets.only(left: 14.h, right: 20.h),
      //       child:
      //           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      //         Padding(
      //             padding: EdgeInsets.only(bottom: 1.v),
      //             child: Text("lbl_double_pana".tr,
      //                 style: CustomTextStyles.bodyLargeRoboto)),
      //         Text("lbl_triple_pana".tr, style: CustomTextStyles.bodyLargeRoboto)
      //       ]))
    ]);
  }

  /// Section Widget
  Widget _buildUserProfile(args) {
    return Obx(() => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 141.v,
            crossAxisCount: 2,
            mainAxisSpacing: 66.h,
            crossAxisSpacing: 66.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller.androidLargeSeventeenModelObj.value
            .userprofile3ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile3ItemModel model = controller.androidLargeSeventeenModelObj
              .value.userprofile3ItemList.value[index];
          return Userprofile3ItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
