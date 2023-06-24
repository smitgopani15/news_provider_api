import 'package:flutter/material.dart';
import '../../utils/api_helper.dart';
import '../modal/home_modal.dart';

class HomeProvider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();
  NewsModal newsModal = NewsModal();

  Future<void> getNewsApi() async {
    var response = await apiHelper.newsApiCall();
    newsModal = response;
    notifyListeners();
  }
}
