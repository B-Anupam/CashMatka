import '../controller/betsix_controller.dart';
import '../models/betsix_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BetsixItemWidget extends StatelessWidget {
  BetsixItemWidget(
    this.betsixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BetsixItemModel betsixItemModelObj;

  var controller = Get.find<BetsixController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.v,
          width: 70.h,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            borderRadius: BorderRadius.circular(
              20.h,
            ),
            border: Border.all(
              color: appTheme.black900,
              width: 1.h,
            ),
          ),
        ),
        SizedBox(height: 20.v),
        Obx(
          () => Text(
            betsixItemModelObj.sixHundredSixtyNine!.value,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
