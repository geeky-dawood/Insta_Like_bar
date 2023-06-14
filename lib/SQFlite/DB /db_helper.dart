import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper();

  //// var
  static const dbName = "test.db";
  static const dbVersion = 1;
  static const dbTable = "newTable";
  static const columnId = 'id';
  static const columnName = "dawood";
/////
  static Database? _database;
  /////init
  initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, dbName);
    print(path);
    return await openDatabase(path, version: dbVersion, onCreate: onCreate);
  }

  ///////check-availability
  Future<Database?> get database async {
 _database = await initDb();
 return _database;
  }

  /////// create
  Future onCreate(Database db, int version) async {
    try {
      await db.execute('''
      CREATE TABLE $dbTable(
        $columnId INTEGER PRIMARY KEY,
        $columnName TEXT NOT NULL
      )  
    ''');
    } catch (e) {
      print('Error creating table: $e');
    }
  }


///////insert
  insertRecord(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    print("------${db}");
    print("------${row}");
    return await db?.insert(dbTable, row);
  }

  /////read
  Future<List<Map<String, dynamic>>?> queryDatabase() async {
    Database? db = await instance.database;
    return await db?.query(dbTable);
  }

  Stream<List<Map<String, dynamic>>> queryDatabaseStream() async* {
    Database? db = await instance.database;
    yield* db!.query(dbTable).asStream();
  }

////////
  final StreamController<List<Map<String, dynamic>>> streamController = StreamController<List<Map<String, dynamic>>>();
  // void queryDatabaseStreamListen() async {
  //   Database? db = await instance.database;
  //   Stream<List<Map<String, dynamic>>> dataStream = db!.query(dbTable).asStream();
  //   dataStream.listen(
  //         (data) {
  //       streamController.add(data);
  //     },
  //     onError: (error) {
  //       // Handle error
  //     },
  //     onDone: () {
  //       streamController.close(); // Close the stream when done
  //     },
  //   );
  // }
  final StreamController<List<Map<String, dynamic>>> _streamController = StreamController.broadcast();
  Stream<List<Map<String, dynamic>>> get dataStream => _streamController.stream;

  Future<void> queryDatabaseStreamListen() async {
    Database? db = await instance.database;
    Stream<List<Map<String, dynamic>>> dataStream = db!.query(dbTable).asStream();

    await for (List<Map<String, dynamic>> data in dataStream) {
      _streamController.add(data);
    }
  }




  /////////dedlete
  deleteRecord(int id )async {
    Database? db = await instance.database;
    print("------${db}");
    return await db?.delete(dbTable, where: '$columnId =?' ,whereArgs: [id] );
  }

}
