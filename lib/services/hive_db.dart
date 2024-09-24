import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HiveDb {
  static Future<void> init() async {
    await Hive.initFlutter();
  }

  static Future<void> setData(String key, dynamic value) async {
    var box = await Hive.openBox('testBox');
    await box.put(key, value);
    log("setDataSucessfuly");
  }

  static Future<dynamic> getData(String key) async {
    var box = await Hive.openBox('testBox');
    return await box.get(key);
  }

  static Future<dynamic> deleteData(String key) async {
    var box = await Hive.openBox('testBox');
    box.delete(key);
  }
}
