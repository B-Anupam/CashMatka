import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/games/double_patti/double_patti_controller.dart';

import '../../../widgets/custom_elevated_button.dart';

class DoublePattiScreen extends StatelessWidget {
  const DoublePattiScreen({super.key, this.type});
  final type;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DoublePattiController());
    final args = Get.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("100", controller.d100TextController),
                singleWidget("119", controller.d119TextController),
                singleWidget("155", controller.d155TextController),
                singleWidget("227", controller.d227TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("335", controller.d335TextController),
                singleWidget("344", controller.d344TextController),
                singleWidget("399", controller.d399TextController),
                singleWidget("588", controller.d588TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("669", controller.d669TextController),
                singleWidget("200", controller.d200TextController),
                singleWidget("110", controller.d110TextController),
                singleWidget("228", controller.d228TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("255", controller.d255TextController),
                singleWidget("336", controller.d336TextController),
                singleWidget("499", controller.d499TextController),
                singleWidget("660", controller.d660TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("688", controller.d688TextController),
                singleWidget("778", controller.d788TextController),
                singleWidget("300", controller.d300TextController),
                singleWidget("166", controller.d166TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("229", controller.d229TextController),
                singleWidget("337", controller.d337TextController),
                singleWidget("355", controller.d355TextController),
                singleWidget("445", controller.d445TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("112", controller.d112TextController),
                singleWidget("220", controller.d220TextController),
                singleWidget("266", controller.d266TextController),
                singleWidget("338", controller.d388TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("599", controller.d599TextController),
                singleWidget("779", controller.d779TextController),
                singleWidget("788", controller.d788TextController),
                singleWidget("400", controller.d400TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("446", controller.d446TextController),
                singleWidget("455", controller.d455TextController),
                singleWidget("699", controller.d699TextController),
                singleWidget("770", controller.d770TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("500", controller.d500TextController),
                singleWidget("113", controller.d113TextController),
                singleWidget("122", controller.d122TextController),
                singleWidget("177", controller.d177TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("339", controller.d339TextController),
                singleWidget("366", controller.d366TextController),
                singleWidget("447", controller.d447TextController),
                singleWidget("799", controller.d799TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("889", controller.d889TextController),
                singleWidget("600", controller.d600TextController),
                singleWidget("114", controller.d114TextController),
                singleWidget("277", controller.d277TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("330", controller.d330TextController),
                singleWidget("448", controller.d448TextController),
                singleWidget("466", controller.d466TextController),
                singleWidget("556", controller.d556TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("880", controller.d880TextController),
                singleWidget("899", controller.d899TextController),
                singleWidget("700", controller.d700TextController),
                singleWidget("115", controller.d115TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("133", controller.d133TextController),
                singleWidget("188", controller.d188TextController),
                singleWidget("223", controller.d223TextController),
                singleWidget("377", controller.d377TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("449", controller.d449TextController),
                singleWidget("557", controller.d557TextController),
                singleWidget("566", controller.d566TextController),
                singleWidget("800", controller.d800TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("116", controller.d116TextController),
                singleWidget("224", controller.d224TextController),
                singleWidget("233", controller.d233TextController),
                singleWidget("288", controller.d288TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("440", controller.d440TextController),
                singleWidget("477", controller.d477TextController),
                singleWidget("558", controller.d558TextController),
                singleWidget("990", controller.d990TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("900", controller.d900TextController),
                singleWidget("117", controller.d117TextController),
                singleWidget("144", controller.d144TextController),
                singleWidget("199", controller.d199TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("255", controller.d255TextController),
                singleWidget("388", controller.d388TextController),
                singleWidget("559", controller.d559TextController),
                singleWidget("577", controller.d577TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("667", controller.d667TextController),
                singleWidget("550", controller.d550TextController),
                singleWidget("668", controller.d668TextController),
                singleWidget("244", controller.d244TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("299", controller.d299TextController),
                singleWidget("266", controller.d266TextController),
                singleWidget("488", controller.d488TextController),
                singleWidget("677", controller.d677TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("118", controller.d118TextController),
                singleWidget("334", controller.d334TextController),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomElevatedButton(
          text: "Submit",
          onPressed: () async {
            var res = await controller.submitPressed(args, type);
            //   if (res) {
            //     Get.to(BetHistoryPage());
            //   }
          },
        ),
      ),
    );
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
