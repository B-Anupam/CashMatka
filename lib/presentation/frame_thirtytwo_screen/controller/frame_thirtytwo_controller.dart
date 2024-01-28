import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/frame_thirtytwo_screen/models/frame_thirtytwo_model.dart';

/// A controller class for the FrameThirtytwoScreen.
///
/// This class manages the state of the FrameThirtytwoScreen, including the
/// current frameThirtytwoModelObj
class FrameThirtytwoController extends GetxController {
  Rx<FrameThirtytwoModel> frameThirtytwoModelObj = FrameThirtytwoModel().obs;
}
