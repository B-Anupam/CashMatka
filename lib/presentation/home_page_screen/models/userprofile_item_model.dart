import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.morningText,
    this.ssnText,
    this.openTimeText,
    this.openTime,
    this.closedTimeText,
    this.closedTime,
    this.id,
  }) {
    morningText = morningText ?? Rx("MADHURB MORNING");
    ssnText = ssnText ?? Rx("***-**-***");
    openTimeText = openTimeText ?? Rx("Open Time:");
    openTime = openTime ?? Rx("11:15 am");
    closedTimeText = closedTimeText ?? Rx("Closed Time:");
    closedTime = closedTime ?? Rx("12:15 am");
    id = id ?? Rx("");
  }

  Rx<String>? morningText;

  Rx<String>? ssnText;

  Rx<String>? openTimeText;

  Rx<String>? openTime;

  Rx<String>? closedTimeText;

  Rx<String>? closedTime;

  Rx<String>? id;
}
