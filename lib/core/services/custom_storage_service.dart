import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_todo_app/app/modules/home/models/Todo.dart';

class CustomStorageService extends GetxService {
  static final GetStorage _storage = GetStorage();

  bool isExist(String key) {
    return _storage.hasData(key);
  }

  Future<void> write(String key, List<Todo> value) async {
    var json = jsonEncode(value);
    await _storage.write(key, json);
  }

  T? read<T>(String key) {
    if (_storage.read(key) != null) {
      return jsonDecode(_storage.read(key));
    }
  }

  Future<void> remove(String key) async {
    return await _storage.remove(key);
  }

  Future<void> cleanStorage() async {
    await _storage.erase();
  }
}
