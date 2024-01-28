import '../controller/android_large_twentyfour_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeTwentyfourTabContainerScreen.
///
/// This class ensures that the AndroidLargeTwentyfourTabContainerController is created when the
/// AndroidLargeTwentyfourTabContainerScreen is first loaded.
class AndroidLargeTwentyfourTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeTwentyfourTabContainerController());
  }
}
