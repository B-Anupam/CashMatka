import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/frame_fortyone_screen/models/frame_fortyone_model.dart';

/// A controller class for the FrameFortyoneScreen.
///
/// This class manages the state of the FrameFortyoneScreen, including the
/// current frameFortyoneModelObj
class FrameFortyoneController extends GetxController {
  Rx<FrameFortyoneModel> frameFortyoneModelObj = FrameFortyoneModel().obs;
}
