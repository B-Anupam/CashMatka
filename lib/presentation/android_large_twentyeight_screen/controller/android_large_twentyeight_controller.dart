import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_twentyeight_screen/models/android_large_twentyeight_model.dart';

/// A controller class for the AndroidLargeTwentyeightScreen.
///
/// This class manages the state of the AndroidLargeTwentyeightScreen, including the
/// current androidLargeTwentyeightModelObj
class AndroidLargeTwentyeightController extends GetxController {
  Rx<AndroidLargeTwentyeightModel> androidLargeTwentyeightModelObj =
      AndroidLargeTwentyeightModel().obs;
}
