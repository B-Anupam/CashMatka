import '../../../core/app_export.dart';/// This class is used in the [schedulesection_item_widget] screen.
class SchedulesectionItemModel {SchedulesectionItemModel({this.timeText, this.closedText, this.id, }) { timeText = timeText  ?? Rx("10:00 am");closedText = closedText  ?? Rx("Closed for today");id = id  ?? Rx(""); }

Rx<String>? timeText;

Rx<String>? closedText;

Rx<String>? id;

 }
