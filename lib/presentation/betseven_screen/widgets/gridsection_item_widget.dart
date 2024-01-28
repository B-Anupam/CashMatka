import '../controller/betseven_controller.dart';
import '../models/gridsection_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridsectionItemWidget extends StatelessWidget {
  GridsectionItemWidget(
    this.gridsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridsectionItemModel gridsectionItemModelObj;

  var controller = Get.find<BetsevenController>();

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
            gridsectionItemModelObj.twoHundredFortyFive!.value,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
