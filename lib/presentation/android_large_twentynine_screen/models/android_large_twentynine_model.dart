import 'singledigit_item_model.dart';import '../../../core/app_export.dart';import 'schedulesection_item_model.dart';/// This class defines the variables used in the [android_large_twentynine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeTwentynineModel {Rx<List<SingledigitItemModel>> singledigitItemList = Rx(List.generate(4,(index) =>SingledigitItemModel()));

Rx<List<SchedulesectionItemModel>> schedulesectionItemList = Rx([SchedulesectionItemModel(timeText: "10:00 am".obs,closedText: "Closed for today".obs),SchedulesectionItemModel(timeText: "11:00 am".obs),SchedulesectionItemModel(timeText: "12:00 pm".obs),SchedulesectionItemModel(timeText: "1:00 pm".obs),SchedulesectionItemModel(timeText: "2:00 pm".obs),SchedulesectionItemModel(timeText: "3:00 pm".obs),SchedulesectionItemModel(timeText: "4:00 pm".obs),SchedulesectionItemModel(timeText: "5:00 pm".obs),SchedulesectionItemModel(timeText: "6:00 pm".obs),SchedulesectionItemModel(timeText: "7:00 pm".obs),SchedulesectionItemModel(timeText: "8:00 pm".obs),SchedulesectionItemModel(timeText: "9:00 pm".obs),SchedulesectionItemModel(timeText: "10:00 pm".obs)]);

 }
