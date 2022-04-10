import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CustomStorageService extends GetxService {
  static final GetStorage _storage = GetStorage();

  bool isExist(String key) {
    return _storage.hasData(key);
  }

  Future<void> write(String key, dynamic value) async {
    await _storage.write(key, json);
  }

  T? read<T>(String key) {
    return _storage.read(key);
  }

  Future<void> remove(String key) async {
    return await _storage.remove(key);
  }

  Future<void> cleanStorage() async {
    await _storage.erase();
  }
}
