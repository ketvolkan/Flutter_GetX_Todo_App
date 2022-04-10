import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/theme/app_theme.dart';
import 'package:getx_todo_app/core/services/custom_storage_service.dart';
import 'package:getx_todo_app/generated/locales.g.dart';
import 'package:get_storage/get_storage.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  initApp();
}

void initApp() {
  Get.put(CustomStorageService());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppThemes.light,
      translations: Locales(),
      locale: const Locale("tr", "TR"),
    ),
  );
}
