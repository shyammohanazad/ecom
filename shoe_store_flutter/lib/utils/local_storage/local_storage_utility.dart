import 'package:get_storage/get_storage.dart';

class MyAppLocalStorage {
  static final MyAppLocalStorage _instance = MyAppLocalStorage._internal();

  factory MyAppLocalStorage() {
    return _instance;
  }

  MyAppLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save Data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Genric method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generic Method to remove Data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in Storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
