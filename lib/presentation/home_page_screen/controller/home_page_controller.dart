import 'package:matka/core/app_export.dart';
import 'package:matka/data/apiClient/api_client.dart';
import 'package:matka/presentation/home_page_screen/models/home_page_model.dart';
import 'package:matka/presentation/home_page_screen/models/user_model.dart';

import '../models/games_model.dart';

/// A controller class for the HomePageScreen.
///
/// This class manages the state of the HomePageScreen, including the
/// current homePageModelObj
class HomePageController extends GetxController {
  Rx<HomePageModel> homePageModelObj = HomePageModel().obs;
  List<GamesListModel> gamesListModelObj = [];
  Rx<int> sliderIndex = 0.obs;
  static UserModel user = UserModel();
  @override
  onInit() {
    getUser();
    getAllGames();
    super.onInit();
  }

  getAllGames() async {
    var res = await ApiClient.getAllGames();
    for (var element in res) {
      gamesListModelObj.add(GamesListModel.fromJson(element));
    }
    update();
    // print(gamesListModelObj.length);
    // print(res);
  }

  getUser() async {
    var res = await ApiClient.getUser();
    print(res);
    user = UserModel.fromJson(res);
    print(user.username);
    update();
  }
}
