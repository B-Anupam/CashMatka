import 'controller/bet_twelve_controller.dart';
import 'models/bet_twelve_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BetTwelvePage extends StatelessWidget {
  BetTwelvePage({Key? key})
      : super(
          key: key,
        );

  BetTwelveController controller =
      Get.put(BetTwelveController(BetTwelveModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              SizedBox(height: 380.v),
              CustomElevatedButton(
                width: 254.h,
                text: "lbl_submit".tr,
                margin: EdgeInsets.only(
                  left: 61.h,
                  right: 60.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
