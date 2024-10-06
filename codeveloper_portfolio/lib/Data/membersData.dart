import 'package:flutter/material.dart';

class MembersData {
  static List<List<String>>? _DataList;
  static SetData(Future<List<List<String>>> list) async {
    _DataList = await list;
  }

  static List<List<String>> GetMembersData() {
    return _DataList!;
  }
}
