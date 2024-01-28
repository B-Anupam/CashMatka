import 'controller/bet1_controller.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/widgets/app_bar/appbar_leading_image.dart';
import 'package:matka/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:matka/widgets/app_bar/appbar_trailing_image.dart';
import 'package:matka/widgets/app_bar/custom_app_bar.dart';
import 'package:matka/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Bet1Screen extends GetWidget<Bet1Controller> {
  const Bet1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 31.v),
                child: Column(children: [
                  _buildCalendar(),
                  SizedBox(height: 30.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.v),
                                child: Text("lbl_total".tr,
                                    style:
                                        CustomTextStyles.bodyMediumRoboto_1)),
                            Container(
                                height: 35.v,
                                width: 120.h,
                                margin: EdgeInsets.only(left: 6.h),
                                decoration: BoxDecoration(
                                    color: appTheme.whiteA700,
                                    borderRadius: BorderRadius.circular(17.h),
                                    border: Border.all(
                                        color: appTheme.black900,
                                        width: 1.h,
                                        strokeAlign: strokeAlignOutside)))
                          ])),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                      text: "lbl_submit".tr,
                      margin: EdgeInsets.only(left: 29.h, right: 28.h)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgWallet,
              margin: EdgeInsets.only(left: 32.h, top: 15.v, right: 15.h)),
          AppbarSubtitleOne(
              text: "lbl_10".tr,
              margin: EdgeInsets.only(left: 2.h, top: 19.v, right: 47.h))
        ]);
  }

  /// Section Widget
  Widget _buildCalendar() {
    return Obx(() => SizedBox(
        height: 246.v,
        width: 310.h,
        child: TableCalendar(
            locale: 'en_US',
            firstDay: DateTime(DateTime.now().year - 5),
            lastDay: DateTime(DateTime.now().year + 5),
            calendarFormat: CalendarFormat.month,
            rangeSelectionMode: controller.rangeSelectionMode.value,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            calendarStyle: CalendarStyle(
                outsideDaysVisible: false, isTodayHighlighted: true),
            daysOfWeekStyle: DaysOfWeekStyle(),
            headerVisible: false,
            focusedDay: controller.focusedDay.value,
            rangeStartDay: controller.rangeStart,
            rangeEndDay: controller.rangeEnd,
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(controller.selectedDay, selectedDay)) {
                controller.focusedDay.value = focusedDay;
                controller.selectedDay = selectedDay;
                controller.rangeSelectionMode.value =
                    RangeSelectionMode.toggledOn;
              }
            },
            onRangeSelected: (start, end, focusedDay) {
              controller.focusedDay.value = focusedDay;
              controller.rangeEnd = end;
              controller.rangeStart = start;
              controller.rangeSelectionMode.value =
                  RangeSelectionMode.toggledOn;
            },
            onPageChanged: (focusedDay) {
              controller.focusedDay.value = focusedDay;
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
