import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/games/double_digit/double_digit_controller.dart';
import 'package:matka/presentation/games/double_patti/double_patti_controller.dart';
import 'package:matka/presentation/games/single_digit/single_digit_controller.dart';
import 'package:matka/widgets/custom_elevated_button.dart';

import '../../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../../widgets/app_bar/appbar_trailing_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../home_page_screen/controller/home_page_controller.dart';

class DoubleDigitPage extends StatelessWidget {
  const DoubleDigitPage({super.key, @required this.type});
  final String? type;
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final controller = Get.put(DoubleDigitController());
    return Scaffold(
      backgroundColor: ColorSchemes.primaryColorScheme.onPrimaryContainer,
      appBar: CustomAppBar(
          leadingWidth: 44.h,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text("Jodi Digit"),
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
                SinglePointWidget("01", controller.d1controller),
                SinglePointWidget("02", controller.d2controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("03", controller.d3controller),
                SinglePointWidget("04", controller.d4controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("05", controller.d5controller),
                SinglePointWidget("06", controller.d6controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("7", controller.d7controller),
                SinglePointWidget("8", controller.d8controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("9", controller.d9controller),
                SinglePointWidget("10", controller.d10controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("11", controller.d11controller),
                SinglePointWidget("12", controller.d12controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("13", controller.d13controller),
                SinglePointWidget("14", controller.d14controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("15", controller.d15controller),
                SinglePointWidget("16", controller.d16controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("17", controller.d17controller),
                SinglePointWidget("18", controller.d18controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("19", controller.d19controller),
                SinglePointWidget("20", controller.d20controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("21", controller.d21controller),
                SinglePointWidget("22", controller.d22controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("23", controller.d23controller),
                SinglePointWidget("24", controller.d24controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("25", controller.d25controller),
                SinglePointWidget("26", controller.d26controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("27", controller.d27controller),
                SinglePointWidget("28", controller.d28controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("29", controller.d29controller),
                SinglePointWidget("30", controller.d30controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("31", controller.d31controller),
                SinglePointWidget("32", controller.d32controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("33", controller.d33controller),
                SinglePointWidget("34", controller.d34controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("35", controller.d35controller),
                SinglePointWidget("36", controller.d36controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("37", controller.d37controller),
                SinglePointWidget("38", controller.d38controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("39", controller.d39controller),
                SinglePointWidget("40", controller.d40controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("41", controller.d41controller),
                SinglePointWidget("42", controller.d42controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("43", controller.d43controller),
                SinglePointWidget("44", controller.d44controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("45", controller.d45controller),
                SinglePointWidget("46", controller.d46controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("47", controller.d47controller),
                SinglePointWidget("48", controller.d48controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("49", controller.d49controller),
                SinglePointWidget("50", controller.d50controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("51", controller.d51controller),
                SinglePointWidget("52", controller.d52controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("53", controller.d53controller),
                SinglePointWidget("54", controller.d54controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("55", controller.d55controller),
                SinglePointWidget("56", controller.d56controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("57", controller.d57controller),
                SinglePointWidget("58", controller.d58controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("59", controller.d59controller),
                SinglePointWidget("60", controller.d60controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("61", controller.d61controller),
                SinglePointWidget("62", controller.d62controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("63", controller.d63controller),
                SinglePointWidget("64", controller.d64controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("65", controller.d65controller),
                SinglePointWidget("66", controller.d66controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("67", controller.d67controller),
                SinglePointWidget("68", controller.d68controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("69", controller.d69controller),
                SinglePointWidget("70", controller.d70controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("71", controller.d71controller),
                SinglePointWidget("72", controller.d72controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("73", controller.d73controller),
                SinglePointWidget("74", controller.d74controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("75", controller.d75controller),
                SinglePointWidget("76", controller.d76controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("77", controller.d77controller),
                SinglePointWidget("78", controller.d78controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("79", controller.d79controller),
                SinglePointWidget("80", controller.d80controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("81", controller.d81controller),
                SinglePointWidget("82", controller.d82controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("83", controller.d83controller),
                SinglePointWidget("84", controller.d84controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("85", controller.d85controller),
                SinglePointWidget("86", controller.d86controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("87", controller.d87controller),
                SinglePointWidget("88", controller.d88controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("89", controller.d89controller),
                SinglePointWidget("90", controller.d90controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("91", controller.d91controller),
                SinglePointWidget("92", controller.d92controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("93", controller.d93controller),
                SinglePointWidget("94", controller.d94controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("95", controller.d95controller),
                SinglePointWidget("96", controller.d96controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("97", controller.d97controller),
                SinglePointWidget("98", controller.d98controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SinglePointWidget("99", controller.d99controller),
                SinglePointWidget("00", controller.d0controller),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Get.width * 0.1, vertical: 20),
        child: GetBuilder<DoublePattiController>(
          init: DoublePattiController(),
          initState: (_) {},
          builder: (_) {
            return CustomElevatedButton(
              text: "Submit",
              onPressed: () {
                controller.submitPressed(args, type);
              },
              btnState: controller.btnState,
            );
          },
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
