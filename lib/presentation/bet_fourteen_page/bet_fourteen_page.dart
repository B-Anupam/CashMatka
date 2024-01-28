import 'controller/bet_fourteen_controller.dart';
import 'models/bet_fourteen_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BetFourteenPage extends StatelessWidget {
  BetFourteenPage({Key? key})
      : super(
          key: key,
        );

  BetFourteenController controller =
      Get.put(BetFourteenController(BetFourteenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              SizedBox(height: 442.v),
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
