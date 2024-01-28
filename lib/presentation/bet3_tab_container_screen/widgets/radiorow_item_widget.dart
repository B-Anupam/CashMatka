import '../controller/bet3_tab_container_controller.dart';
import '../models/radiorow_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RadiorowItemWidget extends StatelessWidget {
  RadiorowItemWidget(
    this.radiorowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RadiorowItemModel radiorowItemModelObj;

  var controller = Get.find<Bet3TabContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomRadioButton(
              text: "lbl_sp".tr,
              value: "lbl_sp".tr,
              groupValue: radiorowItemModelObj.radioGroup!.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                radiorowItemModelObj.radioGroup!.value = value;
              },
            ),
          ),
          Spacer(
            flex: 54,
          ),
          Obx(
            () => CustomRadioButton(
              text: "lbl_dp".tr,
              value: "lbl_dp".tr,
              groupValue: radiorowItemModelObj.radioGroup1!.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                radiorowItemModelObj.radioGroup1!.value = value;
              },
            ),
          ),
          Spacer(
            flex: 45,
          ),
          Obx(
            () => CustomRadioButton(
              text: "lbl_tp".tr,
              value: "lbl_tp".tr,
              groupValue: radiorowItemModelObj.radioGroup2!.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                radiorowItemModelObj.radioGroup2!.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
