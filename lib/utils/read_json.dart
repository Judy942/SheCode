import 'dart:convert';

import 'package:flutter/services.dart';
import '../../../features/detection/models/waste_model.dart';
class ReadJson {
  static Future<List<WasteModel>?> readJsonData() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/json/model/model_tanaman.json');
      final jsonData = json.decode(jsonString);

      List<dynamic> tanamanData = jsonData;
      List<WasteModel> tempList = [];
      for (var item in tanamanData) {
        tempList.add(WasteModel.fromJson(item));
      }
      print(tempList);
      return tempList;
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return null;
  }
}
