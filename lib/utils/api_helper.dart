import 'dart:convert';
import 'package:http/http.dart' as http;
import '../screen/modal/home_modal.dart';

class ApiHelper {
  NewsModal newsModal = NewsModal();

  Future<NewsModal> newsApiCall() async {
    String apiLink =
        "https://newsapi.org/v2/everything?q=tesla&from=2023-03-05&sortBy=publishedAt&apiKey=421bf1b94b28421cbaeb97808a515ae8";
    Uri uri = Uri.parse(apiLink);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    newsModal = NewsModal().newsFromJson(json);
    return newsModal;
  }
}
