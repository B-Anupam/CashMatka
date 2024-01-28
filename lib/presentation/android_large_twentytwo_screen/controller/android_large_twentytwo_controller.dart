import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_twentytwo_screen/models/android_large_twentytwo_model.dart';

/// A controller class for the AndroidLargeTwentytwoScreen.
///
/// This class manages the state of the AndroidLargeTwentytwoScreen, including the
/// current androidLargeTwentytwoModelObj
class AndroidLargeTwentytwoController extends GetxController {
  Rx<AndroidLargeTwentytwoModel> androidLargeTwentytwoModelObj =
      AndroidLargeTwentytwoModel().obs;
}
