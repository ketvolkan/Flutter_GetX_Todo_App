import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/home/controllers/home_controller.dart';

class EditDialog extends StatelessWidget {
  EditDialog({
    Key? key,
  }) : super(key: key);
  HomeController controller = Get.find();
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var id = controller.editingId;
    return Container(
      alignment: Alignment.center,
      child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Edit Todo'.tr,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  controller.updateTodo(textController.text, id);
                  Get.back();
                },
                child: Text("Edit".tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
