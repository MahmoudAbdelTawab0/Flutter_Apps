import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SqlDb {
  static final SqlDb _instance = SqlDb._instance;
  factory SqlDb () =>_instance;
  SqlDb.internal();
  static Database? _db;

  Future<Database?> inital () async{
    if(_db != null){
      return _db;
    }
    String database = await getDatabasesPath();
    String path = join(database,"Interveiw.db");
    _db =await openDatabase(path,version: 1,onCreate: _onCreate);
    return _db;
  }
  _onCreate (Database db,int version) async{
    db.execute('''
    create table InvoiceDetails(
    lineNo INTEGER PRIMARY KEY,
    productName VARCHAR(100),
    unitNo INTEGER,
    price REAL,
    total REAL,
    quantity REAL,
    expiryTime DATETIME
    );
    ''');
    db.execute('''
    create tubal Unit(
    unitNo INTEGER,
    unitName VARCHAR(100);
    );
    ''');
  }
  Future<List<Map>> get()async{
    _db = await inital();
    return _db!.query("InvoiceDetails",orderBy:"productName ASC" );
  }
  Future<int> insertData(Map<String,dynamic> data) async{
    _db = await inital();
    return await _db!.insert("InvoiceDetails", data);
  }

}