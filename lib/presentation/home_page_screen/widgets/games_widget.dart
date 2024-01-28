import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/home_page_screen/controller/home_page_controller.dart';
import 'package:matka/presentation/home_page_screen/models/games_model.dart';

import '../../../widgets/custom_elevated_button.dart';
import '../../frame_thirtytwo_screen/frame_thirtytwo_screen.dart';

Widget GamesWidget(GamesListModel game) {
//   final controller = Get.put(HomePageController());
  convartDateTime(String data) {
    DateTime? dt;
    String ampm = "";
    String hour = "";
    String minute = "";
    var l = data.split(":");
    minute = l[1];
    if (int.parse(l[0]) < 12) {
      ampm = "AM";
      hour = l[0];
    } else {
      ampm = "PM";
      hour = (int.parse(l[0]) - 12).toString();
    }

    return "$hour:$minute $ampm";
  }

  isGameLive(endtime) {
    DateTime? dtn = DateTime.now();
    String ampm = "";
    int hour;
    int minute;
    var l = endtime.split(":");
    minute = int.parse(l[1]);
    hour = int.parse(l[0]);

    if (dtn.hour < hour) {
      return true;
    } else {
      return false;
    }
  }

  return Container(
    margin: EdgeInsets.all(3),
    padding: EdgeInsets.symmetric(
      horizontal: 9.h,
      vertical: 8.v,
    ),
    decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
        color: Color.fromARGB(255, 251, 229, 255)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.gameCode.toString(),
                style: CustomTextStyles.bodyMediumRobotoRegular_1,
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  game!.sampleResult.toString(),
                  style: CustomTextStyles.bodyMediumRobotoRegular_1,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "Open Time :",
                        style: CustomTextStyles.bodySmallGreen600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        convartDateTime(
                          game.gameDays!.startTime.toString(),
                        ),
                        style: CustomTextStyles.bodyMediumRoboto,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.v),
          child: Column(
            children: [
              CustomElevatedButton(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(1)),
                height: 44.v,
                width: 103.h,
                text: isGameLive(game.gameDays!.endTime)
                    ? "PLAY GAME".tr
                    : "BID CLOSED",
                margin: EdgeInsets.only(right: 21.h),
                buttonStyle: isGameLive(game.gameDays!.endTime)
                    ? CustomButtonStyles.fillPrimaryTL14
                    : CustomButtonStyles.outlineBlackTL17,
                buttonTextStyle: theme.textTheme.labelLarge,
                onPressed: () {
                  isGameLive(game.gameDays!.endTime)
                      ? gotoBettingPage(game)
                      : onTapPlayButton();
                },
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 14.v),
              SizedBox(
                width: 132.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Close time: ",
                      style: CustomTextStyles.bodySmallDeeporangeA700,
                    ),
                    Text(
                      convartDateTime(
                        game.gameDays!.endTime.toString(),
                      ),
                      style: CustomTextStyles.bodyMediumRoboto,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

gotoBettingPage(game) {
  Get.toNamed(AppRoutes.androidLargeSeventeenScreen, arguments: game);
}

onTapPlayButton() {
  // Get.toNamed(AppRoutes.frameThirtytwoScreen);
  Get.dialog(FrameThirtyTwoWidget());
}
