import '../controller/frame_fortyone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FrameFortyoneScreen.
///
/// This class ensures that the FrameFortyoneController is created when the
/// FrameFortyoneScreen is first loaded.
class FrameFortyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameFortyoneController());
  }
}
