import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_twentythree_screen/models/android_large_twentythree_model.dart';

/// A controller class for the AndroidLargeTwentythreeScreen.
///
/// This class manages the state of the AndroidLargeTwentythreeScreen, including the
/// current androidLargeTwentythreeModelObj
class AndroidLargeTwentythreeController extends GetxController {
  Rx<AndroidLargeTwentythreeModel> androidLargeTwentythreeModelObj =
      AndroidLargeTwentythreeModel().obs;
}
