import 'package:matka/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [android_large_twentyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeTwentyfiveModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Paytm",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Google Play",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Phone Pay",
    )
  ]);
}
