import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_history/controller/bet_history_controller.dart';
import 'package:matka/presentation/bet_history/model/bet_history_model.dart';

class BetHistoryPage extends StatelessWidget {
  const BetHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BetHistoryController());

    return Scaffold(
        appBar: AppBar(),
        body: GetBuilder<BetHistoryController>(
          init: BetHistoryController(),
          initState: (_) {},
          builder: (_) {
            return SingleChildScrollView(
              child: controller.gameHistory.history?[0] == null
                  ? SizedBox.shrink()
                  : Column(
                      children: List.generate(
                      controller.gameHistory.history!.length,
                      (index) => historyCard(
                        history: controller.gameHistory.history![index],
                      ),
                    )),
            );
          },
        ));
  }
}

class historyCard extends StatelessWidget {
  const historyCard({super.key, required this.history});
  final History history;
  @override
  Widget build(BuildContext context) {
    convartDateTime(String data1) {
      DateTime? dt;
      String ampm = "";
      String hour = "";
      String minute = "";
      var data = data1.split("T");
      var l = data[1].split(":");
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

    int winningPoints() {
      return (double.parse(history.unitPoints.toString()) *
              double.parse(history.points.toString()))
          .toInt();
    }

    ;

    return Card(
      child: Column(
        children: [
          Container(
            width: Get.width,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${history.game?.gameCode}".toUpperCase(),
                style: CustomTextStyles.titleLargeWhiteA700,
              ),
            )),
            decoration: BoxDecoration(color: theme.primaryColor),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Game Type",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                Text(
                  "Digit",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                Text(
                  "Points",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("${history.gameResultLevel}",
                    style: CustomTextStyles.titleSmall14),
                Text("${history.gameDigit}",
                    style: CustomTextStyles.titleSmall14),
                Text("${history.points}", style: CustomTextStyles.titleSmall14),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Container(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Game id",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                Text(
                  "Game Date",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("${history.id}", style: CustomTextStyles.titleSmall14),
                Text("${history.gameDate?.split("T")[0]}",
                    style: CustomTextStyles.titleSmall14),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Container(
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Transaction Time",
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                  Text(
                    convartDateTime(history.created.toString()),
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              history.passed == true
                  ? "You Won ${winningPoints()} "
                  : "Better Luck Next Time",
              style: history.passed == true
                  ? CustomTextStyles.titleLargeMedium
                      .copyWith(color: theme.primaryColor)
                  : CustomTextStyles.labelLargeBlack900,
            ),
          )
        ],
      ),
    );
  }
}
