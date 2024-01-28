import 'controller/bet_eight_controller.dart';
import 'models/bet_eight_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BetEightPage extends StatelessWidget {
  BetEightPage({Key? key})
      : super(
          key: key,
        );

  BetEightController controller =
      Get.put(BetEightController(BetEightModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              SizedBox(height: 262.v),
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
