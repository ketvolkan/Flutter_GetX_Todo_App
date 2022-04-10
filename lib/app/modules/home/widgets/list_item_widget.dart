import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/home/controllers/home_controller.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    final index = controller.currentIndex;
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (_) {
        controller.deleteFromList(controller.currentList.value[index].id);
      },
      child: GestureDetector(
        onTap: () {
          controller.setComplated(controller.currentList.value[index].id);
        },
        child: Obx(
          () => Card(
            color: Get.theme.appBarTheme.backgroundColor,
            elevation: 40,
            shadowColor: controller.currentList.value[index].complated.value
                ? Colors.red
                : Colors.green,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: Icon(
                Icons.access_alarm_outlined,
                color: Get.theme.appBarTheme.foregroundColor,
              ),
              title: Obx(() => Text(
                    controller.currentList.value[index].text,
                    style:
                        TextStyle(color: Get.theme.appBarTheme.foregroundColor),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
