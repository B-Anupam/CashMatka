import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_twentyseven_screen/models/android_large_twentyseven_model.dart';

/// A controller class for the AndroidLargeTwentysevenScreen.
///
/// This class manages the state of the AndroidLargeTwentysevenScreen, including the
/// current androidLargeTwentysevenModelObj
class AndroidLargeTwentysevenController extends GetxController {
  Rx<AndroidLargeTwentysevenModel> androidLargeTwentysevenModelObj =
      AndroidLargeTwentysevenModel().obs;
}
