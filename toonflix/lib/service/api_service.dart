import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";

  static const String today = "today";

  static Future<List<WebtoonModel>> getToday() async {
    List<WebtoonModel> webToons = [];
    var uri = Uri.parse("$baseUrl/$today");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webToons.add(WebtoonModel.fromJson(webtoon));
      }

      return webToons;
    } else {
      print(response.statusCode);
      throw Error();
    }
  }
}
