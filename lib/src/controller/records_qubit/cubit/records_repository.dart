import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class RecordsRepository {
  Future<List<dynamic>?> getData() async {
    try {
      String rowData = await rootBundle.loadString("assets/data/records.json");

      List<dynamic> decodedData = jsonDecode(rowData);
      return decodedData;
    } catch (ex) {
      return null;
    }
  }
}
