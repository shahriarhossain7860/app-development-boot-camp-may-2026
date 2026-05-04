import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class CartDatabaseHelper {
  static final CartDatabaseHelper _instance = CartDatabaseHelper._internal();
  factory CartDatabaseHelper() => _instance;
  static Database? _database;

  CartDatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'cart.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE cart(
            id INTEGER,
            user_id INTEGER,
            title TEXT,
            subTitle TEXT,
            image TEXT,
            price TEXT,
            quantity INTEGER,
            PRIMARY KEY (id, user_id)
          )
        ''');
      },
    );
  }

  Future<void> addToCart(Map<String, dynamic> product, int userId) async {
    final db = await database;
    var existing = await db.query(
      'cart',
      where: 'id = ? AND user_id = ?',
      whereArgs: [product['id'], userId],
    );

    if (existing.isNotEmpty) {
      int currentQty = int.tryParse(existing.first['quantity'].toString()) ?? 0;
      await db.update(
        'cart',
        {'quantity': currentQty + 1},
        where: 'id = ? AND user_id = ?',
        whereArgs: [product['id'], userId],
      );
    } else {
      await db.insert('cart', {
        'id': product['id'],
        'user_id': userId,
        'title': product['title'],
        'subTitle': product['sub_title'],
        'image': product['image'],
        'price': product['price'],
        'quantity': 1,
      });
    }
  }

  Future<void> decreaseQuantityOrRemove(int id, int userId) async {
    final db = await database;
    var existing = await db.query(
      'cart',
      where: 'id = ? AND user_id = ?',
      whereArgs: [id, userId],
    );

    if (existing.isNotEmpty) {
      int currentQty = int.tryParse(existing.first['quantity'].toString()) ?? 0;
      if (currentQty > 1) {
        await db.update(
          'cart',
          {'quantity': currentQty - 1},
          where: 'id = ? AND user_id = ?',
          whereArgs: [id, userId],
        );
      } else {
        await db.delete(
          'cart',
          where: 'id = ? AND user_id = ?',
          whereArgs: [id, userId],
        );
      }
    }
  }

  Future<List<Map<String, dynamic>>> getCartItems(int userId) async {
    final db = await database;
    return await db.query('cart', where: 'user_id = ?', whereArgs: [userId]);
  }

  Future<void> removeFromCart(int id, int userId) async {
    final db = await database;
    await db.delete('cart',
        where: 'id = ? AND user_id = ?', whereArgs: [id, userId]);
  }

  Future<void> clearCart(int userId) async {
    final db = await database;
    await db.delete('cart', where: 'user_id = ?', whereArgs: [userId]);
  }
}
