import '../controller/android_large_twentynine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentynineScreen.
///
/// This class ensures that the AndroidLargeTwentynineController is created when the
/// AndroidLargeTwentynineScreen is first loaded.
class AndroidLargeTwentynineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentynineController());
  }
}
