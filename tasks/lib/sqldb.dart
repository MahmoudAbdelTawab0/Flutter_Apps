import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlDb {
  static final SqlDb _instance = SqlDb.internal();
  factory SqlDb() => _instance;
  SqlDb.internal();
  static Database? _db;

  Future<Database?> initDatabase() async{
    if(_db != null){
      return _db;
    }
    final String databasePath = await getDatabasesPath();
    String path = join(databasePath,"Interview.db");
    _db = await openDatabase(path,version: 1,onCreate: _onCreate);
    return _db;
  }

  _onCreate(Database db, int version){
    db.execute('''
    create table InvoiceDetails (
				lineNo INTEGER PRIMARY KEY,
				productName VARCHAR(100),
				UnitNo INTEGER,
				price REAL,
				quantity REAL,
				total REAL,
				expiryDate INTEGER
				);
    ''');
    db.execute('''
    create table Unit (
				unitNo INTEGER ,
				unitName VARCHAR(100)
				);
    ''');
  }

  Future<List<Map<String, dynamic>>> getInvoiceDetail() async{
    _db = await initDatabase();
    final result = _db!.query("InvoiceDetails",orderBy: "productName ASC");
    return result;
  }
  Future<int> insertInvoiceDetail(Map<String,dynamic> data) async{
    _db = await initDatabase();
    return await _db!.insert("InvoiceDetails", data);

  }

}