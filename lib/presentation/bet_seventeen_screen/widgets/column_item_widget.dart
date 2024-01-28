import '../controller/bet_seventeen_controller.dart';
import '../models/column_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColumnItemWidget extends StatelessWidget {
  ColumnItemWidget(
    this.columnItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ColumnItemModel columnItemModelObj;

  var controller = Get.find<BetSeventeenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              columnItemModelObj.textOne!.value,
              style: CustomTextStyles.bodyLargeWhiteA700,
            ),
          ),
          SizedBox(height: 5.v),
          CustomTextFormField(
            width: 100.h,
            controller: columnItemModelObj.columnOneController,
            hintText: "lbl_enter_points".tr,
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
