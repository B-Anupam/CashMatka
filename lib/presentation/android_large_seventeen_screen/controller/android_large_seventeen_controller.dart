import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_seventeen_screen/models/android_large_seventeen_model.dart';

/// A controller class for the AndroidLargeSeventeenScreen.
///
/// This class manages the state of the AndroidLargeSeventeenScreen, including the
/// current androidLargeSeventeenModelObj
class AndroidLargeSeventeenController extends GetxController {
  Rx<AndroidLargeSeventeenModel> androidLargeSeventeenModelObj =
      AndroidLargeSeventeenModel().obs;
}
