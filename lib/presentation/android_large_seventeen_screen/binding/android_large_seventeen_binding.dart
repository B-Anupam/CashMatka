import '../controller/android_large_seventeen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeSeventeenScreen.
///
/// This class ensures that the AndroidLargeSeventeenController is created when the
/// AndroidLargeSeventeenScreen is first loaded.
class AndroidLargeSeventeenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeSeventeenController());
  }
}
