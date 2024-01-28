import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/android_large_twentynine_screen/models/android_large_twentynine_model.dart';

/// A controller class for the AndroidLargeTwentynineScreen.
///
/// This class manages the state of the AndroidLargeTwentynineScreen, including the
/// current androidLargeTwentynineModelObj
class AndroidLargeTwentynineController extends GetxController {
  Rx<AndroidLargeTwentynineModel> androidLargeTwentynineModelObj =
      AndroidLargeTwentynineModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;
}
