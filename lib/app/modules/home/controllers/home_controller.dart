import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/home/models/Todo.dart';
import 'package:getx_todo_app/core/services/custom_storage_service.dart';
import 'package:uuid/uuid.dart';

enum stateList { all, complated, uncomplated }

class HomeController extends GetxController {
  CustomStorageService storageService = Get.find();
  var state = stateList.all.obs;
  var allList = Rx<List<Todo>>([]);
  var currentList = Rx<List<Todo>>([]);
  var editingId = "";
  var currentIndex = 0;

  void list() {
    storageService.write('liste', allList.value.toList());
    readData();
    if (state == stateList.all) {
      currentList.value = allList.value;
    } else if (state == stateList.complated) {
      currentList.value = [
        for (final todo in allList.value)
          if (todo.complated != false) todo,
      ];
    } else {
      currentList.value = [
        for (final todo in allList.value)
          if (todo.complated == false) todo,
      ];
    }
  }

  void setComplated(id) {
    Todo clicked = [
      for (final todo in allList.value)
        if (todo.id == id) todo,
    ].first;
    clicked.complated.value
        ? clicked.complated.value = false
        : clicked.complated.value = true;
    print(clicked.complated.toString());
    storageService.write("liste", allList.value);
    list();
  }

  int returnListLength() {
    if (allList.value != null) {
      List<Todo> uncomplated = [
        for (final todo in allList.value)
          if (todo.complated.value == false) todo
      ];
      return uncomplated.length;
    } else {
      return 0;
    }
  }

  void addTodo(Todo todo) {
    allList.value.add(todo);

    list();
  }

  void updateTodo(String text, String id) {
    Todo updatedTodo = [
      for (final todo in allList.value)
        if (todo.id == id) todo,
    ].first;

    updatedTodo.text = text;

    list();
  }

  void deleteFromList(id) {
    allList.value = [
      for (final todo in allList.value)
        if (todo.id != id) todo,
    ];
    list();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void readData() {
    List storedTodo = storageService.read<List>('liste') != null
        ? storageService.read<List>('liste')!
        : [];
    if (storedTodo != null) {
      allList.value = storedTodo.map((e) => Todo.fromJson(e)).toList();
    }
  }

  @override
  void onInit() {
    super.onInit();
    // storageService.cleanStorage();
    if (storageService == null) {
      storageService.write(
        "liste",
        [
          Todo(
            id: Uuid().v4(),
            text: "example",
            complated: Rx(false),
          )
        ],
      );
    }
    readData();
    currentList.value = allList.value;
  }

  @override
  void onClose() {}
}
