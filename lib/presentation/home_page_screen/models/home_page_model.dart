import '../../../core/app_export.dart';
import 'frametwentyfour_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageModel {
  Rx<List<FrametwentyfourItemModel>> frametwentyfourItemList = Rx([
    FrametwentyfourItemModel(image: ImageConstant.imgRectangle2.obs),
    FrametwentyfourItemModel(image: ImageConstant.imgImage10.obs)
  ]);

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        morningText: "MADHURB MORNING".obs,
        ssnText: "***-**-***".obs,
        openTimeText: "Open Time:".obs,
        openTime: "11:15 am".obs,
        closedTimeText: "Closed Time:".obs,
        closedTime: "12:15 am".obs),
    UserprofileItemModel(
        morningText: "SRIDEVI".obs,
        ssnText: "***-**-***".obs,
        openTimeText: "Open Time:".obs,
        openTime: "10:25 am".obs,
        closedTimeText: "Closed Time:".obs,
        closedTime: "12:25 am".obs),
    UserprofileItemModel(
        morningText: "KALKA MORNING".obs,
        ssnText: "279-80-460".obs,
        openTimeText: "Open Time:".obs,
        openTime: "11:29 am".obs,
        closedTimeText: "Closed Time:".obs,
        closedTime: "12:29 am".obs),
    UserprofileItemModel(
        morningText: "TIME BAZAR".obs,
        ssnText: "279-80-460".obs,
        openTimeText: "Open Time:".obs,
        openTime: "11:29 am".obs,
        closedTimeText: "Closed Time:".obs,
        closedTime: "12:29 am".obs)
  ]);
}
