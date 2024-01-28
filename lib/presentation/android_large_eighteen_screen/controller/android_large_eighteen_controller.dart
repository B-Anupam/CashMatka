import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_eighteen_screen/models/android_large_eighteen_model.dart';

/// A controller class for the AndroidLargeEighteenScreen.
///
/// This class manages the state of the AndroidLargeEighteenScreen, including the
/// current androidLargeEighteenModelObj
class AndroidLargeEighteenController extends GetxController {
  Rx<AndroidLargeEighteenModel> androidLargeEighteenModelObj =
      AndroidLargeEighteenModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  Rx<String> radioGroup = "".obs;
}
