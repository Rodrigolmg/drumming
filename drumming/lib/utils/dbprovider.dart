import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


final String studentTable = "studentTable";
final String nameColumn = "nameColumn";
final String emailColumn = "emailColumn";
final String mainNumberColumn = "mainNumberColumn";
final String optionalNumberColumn = "optionalNumberColumn";
final String imgColumn = "imgColumn";

class DBProvider {

  DBProvider._();

  static final DBProvider db = DBProvider._();
  Database _database;

  Future<Database> get database async {

    if(_database != null)
      return _database;

    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {

    final databasepath = await getDatabasesPath();
    final path = join(databasepath, "students.db");

    return await openDatabase(path, version: 1, onCreate: (db, newerVersion) async{
      await db.execute(
        "CREATE TABLE $studentTable($emailColumn TEXT PRIMARY KEY, "
            "$nameColumn TEXT, $mainNumberColumn TEXT, $optionalNumberColumn TEXT, "
            "$imgColumn TEXT)"
      );
    });
  }

}