import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet_history/bet_history_page.dart';
import 'package:matka/presentation/games/triple_patti/triple_patti_controller.dart';

import '../../../widgets/custom_elevated_button.dart';

class TriplePattiScreen extends StatelessWidget {
  const TriplePattiScreen({super.key, @required this.type});
  final String? type;
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final controller = Get.put(TriplePattiController());
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                singleWidget("000", controller.d000TextController),
                singleWidget("111", controller.d111TextController),
                singleWidget("222", controller.d222TextController),
                singleWidget("333", controller.d333TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                singleWidget("444", controller.d444TextController),
                singleWidget("555", controller.d555TextController),
                singleWidget("666", controller.d666TextController),
                singleWidget("777", controller.d777TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                singleWidget("888", controller.d888TextController),
                singleWidget("999", controller.d999TextController),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
              child: GetBuilder<TriplePattiController>(
                init: TriplePattiController(),
                initState: (_) {},
                builder: (_) {
                  return CustomElevatedButton(
                    btnState: controller.btnState,
                    text: "Submit",
                    onPressed: () async {
                      var res = await controller.submitPressed(args, type);
                      //   if (res) {
                      //     Get.to(BetHistoryPage());
                      //   }
                    },
                  );
                },
              ),
            )
          ],
        ));
  }
}

Widget singleWidget(text, textController) {
  return Container(
      width: Get.width * 0.2,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "$text",
            style: CustomTextStyles.bodyMediumRegular,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: textController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(12),
                  isDense: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24))),
            ),
          )
        ],
      ));
}
