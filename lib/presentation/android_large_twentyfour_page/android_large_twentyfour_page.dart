import 'controller/android_large_twentyfour_controller.dart';
import 'models/android_large_twentyfour_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentyfourPage extends StatelessWidget {
  AndroidLargeTwentyfourPage({Key? key})
      : super(
          key: key,
        );

  AndroidLargeTwentyfourController controller = Get.put(
      AndroidLargeTwentyfourController(AndroidLargeTwentyfourModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 360.h,
          margin: EdgeInsets.only(
            left: 53.h,
            right: 53.h,
            bottom: 31.v,
          ),
          decoration: AppDecoration.fillBlueGray,
          child: CustomElevatedButton(
            width: 254.h,
            text: "lbl_confirm".tr,
          ),
        ),
        bottomNavigationBar: Container(
          width: 360.h,
          margin: EdgeInsets.only(
            left: 53.h,
            right: 53.h,
            bottom: 31.v,
          ),
          decoration: AppDecoration.fillBlueGray,
          child: CustomElevatedButton(
            width: 254.h,
            text: "lbl_confirm".tr,
          ),
        ),
      ),
    );
  }
}
