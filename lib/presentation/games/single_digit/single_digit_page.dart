import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/games/single_digit/single_digit_controller.dart';
import 'package:matka/widgets/custom_elevated_button.dart';

import '../../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../../widgets/app_bar/appbar_trailing_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../home_page_screen/controller/home_page_controller.dart';

class SingleDigitPage extends StatelessWidget {
  const SingleDigitPage({super.key, @required this.type});
  final String? type;
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final controller = Get.put(SingleDigitController());
    return Scaffold(
      backgroundColor: ColorSchemes.primaryColorScheme.onPrimaryContainer,
      appBar: CustomAppBar(
          leadingWidth: 44.h,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text("Single Digit"),
          ),
          actions: [
            AppbarTrailingImage(
                imagePath: ImageConstant.imgWallet,
                margin: EdgeInsets.only(left: 28.h, top: 15.v, right: 15.h),
                onTap: () {
                  // onTapWallet();
                }),
            GetBuilder<HomePageController>(
              init: HomePageController(),
              initState: (_) {},
              builder: (_) {
                return AppbarSubtitleOne(
                    text: "${HomePageController.user.points ?? 0}",
                    margin: EdgeInsets.only(left: 2.h, top: 19.v, right: 43.h),
                    onTap: () {
                      // onTapTen();
                    });
              },
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("0", controller.d0controller),
                SinglePointWidget("1", controller.d1controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: ColorSchemes.primaryColorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "2",
                          style: CustomTextStyles.titleLargeMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.d2controller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Enter Points",
                                fillColor: Colors.white,
                                filled: true,
                                // border: OutlineInputBorder(),
                                isDense: true),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: ColorSchemes.primaryColorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "3",
                          style: CustomTextStyles.titleLargeMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.d3controller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Enter Points",
                                fillColor: Colors.white,
                                filled: true,
                                // border: OutlineInputBorder(),
                                isDense: true),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: ColorSchemes.primaryColorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "4",
                          style: CustomTextStyles.titleLargeMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.d4controller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Enter Points",
                                fillColor: Colors.white,
                                filled: true,
                                // border: OutlineInputBorder(),
                                isDense: true),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: ColorSchemes.primaryColorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "5",
                          style: CustomTextStyles.titleLargeMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.d5controller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Enter Points",
                                fillColor: Colors.white,
                                filled: true,
                                // border: OutlineInputBorder(),
                                isDense: true),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: ColorSchemes.primaryColorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "6",
                          style: CustomTextStyles.titleLargeMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.d6controller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Enter Points",
                                fillColor: Colors.white,
                                filled: true,
                                // border: OutlineInputBorder(),
                                isDense: true),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: ColorSchemes.primaryColorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "7",
                          style: CustomTextStyles.titleLargeMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.d7controller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Enter Points",
                                fillColor: Colors.white,
                                filled: true,
                                // border: OutlineInputBorder(),
                                isDense: true),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: ColorSchemes.primaryColorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "8",
                          style: CustomTextStyles.titleLargeMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.d8controller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Enter Points",
                                fillColor: Colors.white,
                                filled: true,
                                // border: OutlineInputBorder(),
                                isDense: true),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: ColorSchemes.primaryColorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "9",
                          style: CustomTextStyles.titleLargeMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.d9controller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Enter Points",
                                fillColor: Colors.white,
                                filled: true,
                                // border: OutlineInputBorder(),
                                isDense: true),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
              child: CustomElevatedButton(
                text: "Submit",
                onPressed: () {
                  controller.submitPressed(args, type);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Container SinglePointWidget(digit, textController) {
    return Container(
      width: Get.width * 0.4,
      decoration: BoxDecoration(
          color: ColorSchemes.primaryColorScheme.primary,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$digit",
              style: CustomTextStyles.titleLargeMedium,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: textController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Enter Points",
                    fillColor: Colors.white,
                    filled: true,
                    // border: OutlineInputBorder(),
                    isDense: true),
              ),
            )
          ],
        ),
      ),
    );
  }
}
