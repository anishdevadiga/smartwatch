import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDBService {
  static Database? _database;

  static Future<Database> getDatabase() async {
    if (_database != null) return _database!;
    _database = await openDatabase(
      join(await getDatabasesPath(), 'health_records.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE records(id INTEGER PRIMARY KEY, heartRate INTEGER, stepCount INTEGER, timestamp TEXT)',
        );
      },
      version: 1,
    );
    return _database!;
  }

  static Future<void> insertRecord(Map<String, dynamic> record) async {
    final db = await getDatabase();
    await db.insert('records', record);
  }

  static Future<List<Map<String, dynamic>>> getRecords() async {
    final db = await getDatabase();
    return db.query('records');
  }
}