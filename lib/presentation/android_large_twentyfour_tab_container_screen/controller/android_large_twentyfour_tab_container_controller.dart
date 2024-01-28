import 'package:matka/core/app_export.dart';import 'package:matka/presentation/android_large_twentyfour_tab_container_screen/models/android_large_twentyfour_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the AndroidLargeTwentyfourTabContainerScreen.
///
/// This class manages the state of the AndroidLargeTwentyfourTabContainerScreen, including the
/// current androidLargeTwentyfourTabContainerModelObj
class AndroidLargeTwentyfourTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController nameController = TextEditingController();

TextEditingController editTextController = TextEditingController();

TextEditingController editTextController1 = TextEditingController();

TextEditingController editTextController2 = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<AndroidLargeTwentyfourTabContainerModel> androidLargeTwentyfourTabContainerModelObj = AndroidLargeTwentyfourTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

@override void onClose() { super.onClose(); nameController.dispose(); editTextController.dispose(); editTextController1.dispose(); editTextController2.dispose(); emailController.dispose(); }
 }
