import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:walle/utils/api_constants.dart';

class ApiControler {
  Future _fetchWallpapers(String page) async {
    http.Response response = await http.get(
        'https://api.unsplash.com/photos/?client_id=$kAccessKey&per_page=30&page=$page');
    var _parsedResponse = json.decode(response.body);
    return _parsedResponse;
  }
}
