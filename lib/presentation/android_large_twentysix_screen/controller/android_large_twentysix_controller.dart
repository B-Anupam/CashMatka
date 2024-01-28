import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_twentysix_screen/models/android_large_twentysix_model.dart';

/// A controller class for the AndroidLargeTwentysixScreen.
///
/// This class manages the state of the AndroidLargeTwentysixScreen, including the
/// current androidLargeTwentysixModelObj
class AndroidLargeTwentysixController extends GetxController {
  Rx<AndroidLargeTwentysixModel> androidLargeTwentysixModelObj =
      AndroidLargeTwentysixModel().obs;
}
