import 'package:get/get.dart';

import 'package:getx_todo_app/app/modules/setting/controllers/locale_controller.dart';

import '../controllers/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocaleController>(
      () => LocaleController(),
    );
    Get.lazyPut<SettingController>(
      () => SettingController(),
    );
  }
}
