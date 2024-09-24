import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/services/cache_services.dart';
import 'package:todo_app/services/hive_db.dart';
import 'package:todo_app/view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveDb.init();
  // await HiveDb.setData("fares", ["fares", "Ahmed"]);
  List<String> data = await HiveDb.getData("fares");
  log(data.toString());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
//commint