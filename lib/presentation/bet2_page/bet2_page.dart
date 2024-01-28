import 'controller/bet2_controller.dart';
import 'models/bet2_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Bet2Page extends StatelessWidget {
  Bet2Page({Key? key})
      : super(
          key: key,
        );

  Bet2Controller controller = Get.put(Bet2Controller(Bet2Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              SizedBox(height: 374.v),
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
