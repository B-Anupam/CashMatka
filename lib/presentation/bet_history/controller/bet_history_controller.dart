import 'package:matka/core/app_export.dart';
import 'package:matka/data/apiClient/api_client.dart';
import 'package:matka/presentation/bet_history/model/bet_history_model.dart';

class BetHistoryController extends GetxController {
  GameHistoryModel gameHistory = GameHistoryModel();

  @override
  void onInit() {
    getGameHistory();
    super.onInit();
  }

  getGameHistory() async {
    var res = await ApiClient.getGameHistory();
    gameHistory = GameHistoryModel.fromJson(res);
    update();
    print(res);
    print(gameHistory.history![0].unitPoints);
  }
}
