import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";

  final String today = "today";

  void getToday() async {
    var uri = Uri.parse("$baseUrl/$today");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
      throw Error();
    }
  }
}
