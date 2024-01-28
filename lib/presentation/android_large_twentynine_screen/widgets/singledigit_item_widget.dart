import '../models/singledigit_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingledigitItemWidget extends StatelessWidget {
  SingledigitItemWidget(
    this.singledigitItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SingledigitItemModel singledigitItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 7.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          singledigitItemModelObj.singleDigit!.value,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 12.fSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (singledigitItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.whiteA700,
        selectedColor: appTheme.whiteA700,
        shape: (singledigitItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black900.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
        onSelected: (value) {
          singledigitItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
