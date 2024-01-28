import 'package:matka/core/app_export.dart';
import 'package:matka/presentation/bet1_screen/models/bet1_model.dart';
import 'package:table_calendar/table_calendar.dart';

/// A controller class for the Bet1Screen.
///
/// This class manages the state of the Bet1Screen, including the
/// current bet1ModelObj
class Bet1Controller extends GetxController {
  Rx<Bet1Model> bet1ModelObj = Bet1Model().obs;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  Rx<DateTime> focusedDay = DateTime.now().obs;

  Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;
}
