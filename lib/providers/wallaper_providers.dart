import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:walle/utils/api_constants.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WallpaperProvider with ChangeNotifier {
  List<dynamic> _wallpapers;

  Future fetchWallpapers(int page) async {
    http.Response response = await http.get(
        'https://api.unsplash.com/photos/?client_id=$kAccessKey&per_page=30&page=$page');
    var _parsedResponse = json.decode(response.body);

    notifyListeners();
    return _parsedResponse;
  }

  List<dynamic> get wallpapers => _wallpapers;
}
