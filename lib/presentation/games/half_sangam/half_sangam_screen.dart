import 'package:flutter/material.dart';
import 'package:matka/presentation/games/full_sangam/full_sangam_controller.dart';
import 'package:matka/presentation/games/half_sangam/half_sangam_controller.dart';
import 'package:matka/widgets/custom_elevated_button.dart';

import '../../../core/app_export.dart';

class HalfSangamScreen extends StatelessWidget {
  const HalfSangamScreen({super.key, this.type});
  final type;
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final controller = Get.put(HalfSangamController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          GetBuilder<HalfSangamController>(
            init: HalfSangamController(),
            initState: (_) {},
            builder: (_) {
              return Row(
                children: [
                  Container(
                    width: Get.width * 0.5,
                    child: Row(
                      children: [
                        Checkbox(
                            value: controller.isOpcd,
                            onChanged: (v) {
                              controller.onPressCheckBox(v);
                            }),
                        Flexible(child: Text("Open Panna\n Close Digit")),
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width * 0.5,
                    child: Row(
                      children: [
                        Checkbox(
                            value: !(controller.isOpcd),
                            onChanged: (v) {
                              controller.onPressCheckBox(false);
                            }),
                        Flexible(child: Text("Close Panna\n Open Digit")),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<HalfSangamController>(
                  init: HalfSangamController(),
                  initState: (_) {},
                  builder: (_) {
                    return Text(
                        controller.isOpcd ? "Open Panna" : "Close Panna");
                  },
                ),
                Container(
                  width: Get.width * 0.4,
                  child: TextFormField(
                    controller: controller.opTextController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<HalfSangamController>(
                  init: HalfSangamController(),
                  initState: (_) {},
                  builder: (_) {
                    return Text(
                        controller.isOpcd ? "Close Digit" : "Open Digit");
                  },
                ),
                Container(
                  width: Get.width * 0.4,
                  child: TextFormField(
                    controller: controller.cpTextController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Points"),
                Container(
                  width: Get.width * 0.4,
                  child: TextFormField(
                    controller: controller.pointsTextController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Spacer(),
              CustomElevatedButton(
                onPressed: () => controller.onAddPress(),
                text: "Add",
                width: Get.width * 0.4,
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: GetBuilder<HalfSangamController>(
                init: HalfSangamController(),
                initState: (_) {},
                builder: (_) {
                  return DataTable(
                      headingRowHeight: 50,
                      headingRowColor:
                          MaterialStatePropertyAll(theme.colorScheme.primary),
                      headingTextStyle: theme.textTheme.labelLarge
                          ?.copyWith(color: Colors.white),
                      columnSpacing: 0,
                      decoration: BoxDecoration(),
                      columns: [
                        DataColumn(
                          label: Container(
                            width: Get.width * 0.2,
                            child: Text(
                              "GameType".tr,
                            ),
                          ),
                        ),
                        DataColumn(
                            label: Container(
                          width: Get.width * 0.2,
                          child: Text(
                            "Digit".tr,
                          ),
                        )),
                        DataColumn(
                            label: Container(
                          width: Get.width * 0.2,
                          child: Text(
                            "Amount".tr,
                          ),
                        )),
                        DataColumn(
                            label: Container(
                          width: Get.width * 0.2,
                          child: Text(
                            "".tr,
                          ),
                        )),
                      ],
                      rows: List.generate(
                          controller.l.length,
                          (index) => DataRow(cells: [
                                DataCell(
                                  Text(
                                      controller.l[index]["game_result_level"]),
                                ),
                                DataCell(
                                  Text(controller.l[index]["game_digit"]),
                                ),
                                DataCell(
                                  Text(controller.l[index]["points"]),
                                ),
                                DataCell(
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 20,
                                    ),
                                    child: Center(
                                        child: InkWell(
                                      child: Icon(Icons.delete),
                                      onTap: () {
                                        controller.onpressDelete(index);
                                      },
                                    )),
                                  ),
                                )
                              ])));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CustomElevatedButton(
              text: "Submit",
              onPressed: () {
                controller.onPressSumit(args);
              },
            ),
          )
        ],
      ),
    );
  }
}
