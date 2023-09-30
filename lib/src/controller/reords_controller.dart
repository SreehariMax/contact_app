import 'dart:convert';

import 'package:contact_app/src/model/record.dart';
import 'package:flutter/services.dart' show rootBundle;

class RecordController {
  getData() async {
    String rowData = await rootBundle.loadString("assets/data/records.json");

    List<dynamic> decodedData = jsonDecode(rowData);
    List<RecordsModel> records =
        decodedData.map((item) => RecordsModel.fromJSON(item)).toList();

    return records;
  }
}
