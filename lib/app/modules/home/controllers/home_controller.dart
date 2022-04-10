import 'package:get/get.dart';
import 'package:getx_todo_app/app/modules/home/models/Todo.dart';
import 'package:uuid/uuid.dart';

enum stateList { all, complated, uncomplated }

class HomeController extends GetxController {
  var state = stateList.all.obs;

  var allList = [
    Todo(id: Uuid().v4(), text: "Learn Get X"),
    Todo(id: Uuid().v4(), text: "Walk"),
    Todo(id: Uuid().v4(), text: "Run"),
    Todo(id: Uuid().v4(), text: "Go Home")
  ].obs;

  var currentList = Rx<List<Todo>>([]);

  var currentIndex = 0;

  void list() {
    if (state == stateList.all) {
      currentList.value = allList;
    } else if (state == stateList.complated) {
      currentList.value = [
        for (final todo in allList.value)
          if (todo.complated == false) todo,
      ];
    } else {
      currentList.value = [
        for (final todo in allList.value)
          if (todo.complated != false) todo,
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
    list();
  }

  int returnListLength() {
    return allList.length;
  }

  void addTodo(Todo todo) {
    allList.add(todo);
    list();
  }

  void deleteFromList(id) {
    allList.value = [
      for (final todo in allList.value)
        if (todo.id != id) todo,
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    super.onInit();
    currentList.value = allList.value;
  }

  @override
  void onClose() {}
}
