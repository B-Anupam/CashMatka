import '../../../core/app_export.dart';import 'userprofile2_item_model.dart';import 'userprofile3_item_model.dart';/// This class defines the variables used in the [android_large_seventeen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeSeventeenModel {Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([Userprofile2ItemModel(userImage:ImageConstant.imgFinger1.obs,singleDigits: "Single Digits".obs),Userprofile2ItemModel(singleDigits: "Family Jodi".obs),Userprofile2ItemModel(singleDigits: "Odd Even".obs),Userprofile2ItemModel(singleDigits: "Single Pana".obs)]);

Rx<List<Userprofile3ItemModel>> userprofile3ItemList = Rx([Userprofile3ItemModel(userImage:ImageConstant.img11475601.obs,displayText: "SP DP TP".obs),Userprofile3ItemModel(userImage:ImageConstant.imgImage37.obs,displayText: "SP Motor".obs),Userprofile3ItemModel(userImage:ImageConstant.imgWhatsappImage20231216.obs,displayText: "DP Motor".obs)]);

 }
