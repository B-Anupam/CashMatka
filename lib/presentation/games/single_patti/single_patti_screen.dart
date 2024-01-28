import 'package:flutter/material.dart';
import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/games/single_patti/single_patti_controller.dart';

import '../../../widgets/custom_elevated_button.dart';

class SinglePattiScreen extends StatelessWidget {
  const SinglePattiScreen({super.key, this.type});
  final type;
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final controller = Get.put(SinglePattiController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("128", controller.d128TextController),
                singleWidget("137", controller.d137TextController),
                singleWidget("146", controller.d146TextController),
                singleWidget("236", controller.d236TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("245", controller.d245TextController),
                singleWidget("290", controller.d290TextController),
                singleWidget("380", controller.d380TextController),
                singleWidget("470", controller.d470TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("489", controller.d489TextController),
                singleWidget("560", controller.d560TextController),
                singleWidget("678", controller.d678TextController),
                singleWidget("579", controller.d579TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("129", controller.d129TextController),
                singleWidget("138", controller.d138TextController),
                singleWidget("147", controller.d147TextController),
                singleWidget("156", controller.d156TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("237", controller.d237TextController),
                singleWidget("246", controller.d246TextController),
                singleWidget("345", controller.d345TextController),
                singleWidget("390", controller.d390TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("480", controller.d480TextController),
                singleWidget("570", controller.d570TextController),
                singleWidget("679", controller.d679TextController),
                singleWidget("120", controller.d120TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("139", controller.d139TextController),
                singleWidget("148", controller.d148TextController),
                singleWidget("157", controller.d157TextController),
                singleWidget("238", controller.d238TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("247", controller.d247TextController),
                singleWidget("256", controller.d256TextController),
                singleWidget("346", controller.d346TextController),
                singleWidget("490", controller.d490TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("580", controller.d580TextController),
                singleWidget("670", controller.d670TextController),
                singleWidget("689", controller.d689TextController),
                singleWidget("130", controller.d130TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("149", controller.d149TextController),
                singleWidget("158", controller.d158TextController),
                singleWidget("167", controller.d167TextController),
                singleWidget("239", controller.d239TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("248", controller.d248TextController),
                singleWidget("257", controller.d257TextController),
                singleWidget("347", controller.d347TextController),
                singleWidget("356", controller.d356TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("590", controller.d590TextController),
                singleWidget("680", controller.d680TextController),
                singleWidget("789", controller.d789TextController),
                singleWidget("140", controller.d140TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("159", controller.d159TextController),
                singleWidget("168", controller.d168TextController),
                singleWidget("230", controller.d230TextController),
                singleWidget("249", controller.d249TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("258", controller.d258TextController),
                singleWidget("257", controller.d257TextController),
                singleWidget("347", controller.d347TextController),
                singleWidget("356", controller.d356TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("590", controller.d590TextController),
                singleWidget("680", controller.d680TextController),
                singleWidget("789", controller.d789TextController),
                singleWidget("140", controller.d140TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("159", controller.d159TextController),
                singleWidget("168", controller.d168TextController),
                singleWidget("230", controller.d230TextController),
                singleWidget("249", controller.d249TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("258", controller.d258TextController),
                singleWidget("267", controller.d267TextController),
                singleWidget("348", controller.d348TextController),
                singleWidget("357", controller.d357TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("456", controller.d456TextController),
                singleWidget("690", controller.d690TextController),
                singleWidget("780", controller.d780TextController),
                singleWidget("123", controller.d123TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("150", controller.d150TextController),
                singleWidget("169", controller.d169TextController),
                singleWidget("178", controller.d178TextController),
                singleWidget("240", controller.d240TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("259", controller.d259TextController),
                singleWidget("268", controller.d268TextController),
                singleWidget("349", controller.d349TextController),
                singleWidget("358", controller.d358TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("457", controller.d457TextController),
                singleWidget("367", controller.d367TextController),
                singleWidget("790", controller.d790TextController),
                singleWidget("124", controller.d124TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("160", controller.d160TextController),
                singleWidget("179", controller.d179TextController),
                singleWidget("250", controller.d269TextController),
                singleWidget("269", controller.d278TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("278", controller.d278TextController),
                singleWidget("340", controller.d340TextController),
                singleWidget("359", controller.d359TextController),
                singleWidget("368", controller.d368TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("458", controller.d458TextController),
                singleWidget("467", controller.d467TextController),
                singleWidget("890", controller.d890TextController),
                singleWidget("125", controller.d125TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("134", controller.d134TextController),
                singleWidget("170", controller.d170TextController),
                singleWidget("189", controller.d189TextController),
                singleWidget("260", controller.d260TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("279", controller.d279TextController),
                singleWidget("350", controller.d350TextController),
                singleWidget("369", controller.d369TextController),
                singleWidget("378", controller.d378TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("459", controller.d459TextController),
                singleWidget("567", controller.d567TextController),
                singleWidget("468", controller.d468TextController),
                singleWidget("126", controller.d126TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("135", controller.d135TextController),
                singleWidget("180", controller.d180TextController),
                singleWidget("234", controller.d234TextController),
                singleWidget("270", controller.d270TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("289", controller.d289TextController),
                singleWidget("360", controller.d360TextController),
                singleWidget("379", controller.d379TextController),
                singleWidget("450", controller.d450TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("469", controller.d469TextController),
                singleWidget("478", controller.d478TextController),
                singleWidget("568", controller.d568TextController),
                singleWidget("127", controller.d127TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("136", controller.d136TextController),
                singleWidget("145", controller.d145TextController),
                singleWidget("190", controller.d190TextController),
                singleWidget("235", controller.d235TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("280", controller.d280TextController),
                singleWidget("370", controller.d370TextController),
                singleWidget("479", controller.d479TextController),
                singleWidget("460", controller.d460TextController)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                singleWidget("569", controller.d569TextController),
                singleWidget("389", controller.d389TextController),
                singleWidget("578", controller.d578TextController),
                singleWidget("589", controller.d589TextController)
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
