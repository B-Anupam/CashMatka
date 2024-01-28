import 'dart:convert';

import 'package:matka/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient extends GetConnect {
  static String base_url = "https://cashmatkaworld.in.net/ApiServices";
  static var headers = {'Content-Type': 'application/json'};
  static String? token = '39624';
  static register(data) async {
    // var data = {
    //   "username": "7985368944",
    //   "password": "123456",
    //   "mobile": "7985368955"
    // };
    http.Response res = await http.post(Uri.parse("$base_url/registration"),
        headers: headers, body: json.encode(data));

    return json.decode(res.body);
  }

  static login(data) async {
    http.Response res = await http.post(Uri.parse("$base_url/login"),
        headers: headers, body: json.encode(data));
    token = (json.decode(res.body))["token"];
    final pref = await SharedPreferences.getInstance();
    pref.setString('token', token.toString());
    print(token.toString());
    print(json.decode(res.body));
    return json.decode(res.body);
  }

  static getUser() async {
    http.Response res = await http.get(
      Uri.parse("$base_url/getUser/$token"),
      headers: headers,
    );

    return json.decode(res.body);
  }

  static getWalletHistory(data) async {
    http.Response res = await http.post(
        Uri.parse("$base_url/walletHistory/$token"),
        headers: headers,
        body: json.encode(data));

    return json.decode(res.body);
  }

  static getAllGames() async {
    http.Response res = await http.get(
      Uri.parse("$base_url/getGames"),
      headers: headers,
    );

    return json.decode(res.body);
  }

  static updateUser(data) async {
    try {
      http.Response res = await http.post(
          Uri.parse("$base_url/updateUserDetails"),
          headers: headers,
          body: json.encode(data));
      print("Api response ${res.body}");
      return res.body;
    } catch (e) {
      return "Error updating user details";
    }
  }

  static getGameHistory() async {
    http.Response res = await http.get(
      Uri.parse("$base_url/gameHistory/$token"),
      headers: headers,
    );

    return json.decode(res.body);
  }

  static placeBet(game, l) async {
    var data = {"userGames": l};
    try {
      http.Response res = await http.post(Uri.parse("$base_url/postGame/$game"),
          headers: headers, body: json.encode(data));
      print("Api response ${res.body}");
      return res.body;
    } catch (e) {
      return "Error in API response";
    }
  }
}
