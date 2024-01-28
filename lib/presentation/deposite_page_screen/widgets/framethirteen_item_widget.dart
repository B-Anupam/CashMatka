import '../models/framethirteen_item_model.dart';
import 'package:matka/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramethirteenItemWidget extends StatelessWidget {
  FramethirteenItemWidget(
    this.text, {
    Key? key,
  }) : super(
          key: key,
        );

  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Container(
          width: 60.h,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        selected: (false),
        backgroundColor: appTheme.whiteA700,
        selectedColor: appTheme.whiteA700,
        shape: (false)
            // ignore: dead_code
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black900.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
        // onSelected: (value) {
        //   //     textalue = value;
        // },
      ),
    );
  }
}
