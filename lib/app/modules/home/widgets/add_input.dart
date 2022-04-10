import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/home/models/Todo.dart';
import 'package:uuid/uuid.dart';
import 'package:getx_todo_app/app/modules/home/controllers/home_controller.dart';

class SearchInput extends StatelessWidget {
  SearchInput({
    Key? key,
  }) : super(key: key);

  HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value) {
        controller.addTodo(Todo(id: const Uuid().v4(), text: value));
      },
      decoration: InputDecoration(
        hintText: 'Add Todo'.tr,
        hintStyle: TextStyle(color: Get.theme.colorScheme.primary),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.colorScheme.primary),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.colorScheme.primary),
        ),
      ),
    );
  }
}
