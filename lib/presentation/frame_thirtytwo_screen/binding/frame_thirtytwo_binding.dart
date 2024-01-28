import '../controller/frame_thirtytwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FrameThirtytwoScreen.
///
/// This class ensures that the FrameThirtytwoController is created when the
/// FrameThirtytwoScreen is first loaded.
class FrameThirtytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameThirtytwoController());
  }
}
