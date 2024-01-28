import 'controller/bet_thirteen_controller.dart';
import 'models/bet_thirteen_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BetThirteenPage extends StatelessWidget {
  BetThirteenPage({Key? key})
      : super(
          key: key,
        );

  BetThirteenController controller =
      Get.put(BetThirteenController(BetThirteenModel().obs));

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
                  left: 57.h,
                  right: 64.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
