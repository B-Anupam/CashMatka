import 'controller/bet3_controller.dart';
import 'models/bet3_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Bet3Page extends StatelessWidget {
  Bet3Page({Key? key})
      : super(
          key: key,
        );

  Bet3Controller controller = Get.put(Bet3Controller(Bet3Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              SizedBox(height: 316.v),
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
