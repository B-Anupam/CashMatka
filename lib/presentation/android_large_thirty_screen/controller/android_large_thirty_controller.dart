import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_thirty_screen/models/android_large_thirty_model.dart';

/// A controller class for the AndroidLargeThirtyScreen.
///
/// This class manages the state of the AndroidLargeThirtyScreen, including the
/// current androidLargeThirtyModelObj
class AndroidLargeThirtyController extends GetxController {
  Rx<AndroidLargeThirtyModel> androidLargeThirtyModelObj =
      AndroidLargeThirtyModel().obs;
}
