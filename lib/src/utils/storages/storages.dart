import 'package:shared_preferences/shared_preferences.dart';

class Storages {
  final String key;
  final String method;

  Storages(this.method, {required this.key});

  Future<dynamic> get() async {
    final prefs = await SharedPreferences.getInstance();

    switch (method) {
      case 'int':
        await prefs.getInt(key);
        return;
      case 'bool':
        await prefs.getBool(key);
        return;
      case 'double':
        await prefs.getDouble(key);
        return;
      case 'string':
        await prefs.getString(key);
        return;
      case 'stringList':
        await prefs.getStringList(key);
        return;
      default:
        return;
    }
  }

  Future<dynamic> set({required dynamic data}) async {
    final prefs = await SharedPreferences.getInstance();

    switch (method) {
      case 'int':
        await prefs.setInt(key, data);
        return;
      case 'bool':
        await prefs.setBool(key, data);
        return;
      case 'double':
        await prefs.setDouble(key, data);
        return;
      case 'string':
        await prefs.setString(key, data);
        return;
      case 'stringList':
        await prefs.setStringList(key, data);
        return;
      default:
        return;
    }
  }

  Future<dynamic> remove() async {
    final prefs = await SharedPreferences.getInstance();
    final success = await prefs.remove(key);
  }
}
