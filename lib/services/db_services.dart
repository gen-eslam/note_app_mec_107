import 'dart:developer';

import 'package:sqflite/sqflite.dart';
import 'package:todo_app/model/task_model.dart';

abstract class DbServices {
  // init database
  static late Database _db;
  static const int _dbVersion = 1;
  static const String _tableName = "tasks";

  /// title description isComplete id =>

  static Future<void> initDb() async {
    var dbPath = "${await getDatabasesPath()}$_tableName.db";
    _db = await openDatabase(
      dbPath,
      version: _dbVersion,
      onCreate: (db, version) async {
        try {
          await db.execute("""
          Create table $_tableName(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title STRING,
            description TEXT,
            isComplete INTEGER
          )""");
        } catch (e) {
          log(e.toString());
        } finally {
          log("db created");
        }
      },
    );
  }

  static void insertData(TaskModel task) async {
    await _db.insert(_tableName, task.toJson());
    log("databse inserted Sucessfuly");
  }

  static Future<List<TaskModel>> getAllData() async {
    List<Map<String, dynamic>> data = await _db.query(_tableName);
    log(data.toString());
    List<TaskModel> tasks = data.map((e) => TaskModel.fromJson(e)).toList();
    return tasks;
  }

  static Future<void> updateData(TaskModel task) async {
    await _db.update(_tableName, task.toJson(),
        where: "id = ?", whereArgs: [task.id]);
    log("databse updated Sucessfuly");
  }

  static Future<void> deleteData(int id) async {
    await _db.delete(_tableName, where: "id = ?", whereArgs: [id]);
    log("databse delete Sucessfuly");
  }
}

