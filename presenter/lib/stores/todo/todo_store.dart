import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';

class TodoStore extends NotifierStore<Exception, TodoEntity> with Disposable {
  final ISetTodoDataUsecase setTodoDataUsecase;
  final IGetTodoDataUsecase getTodoDataUsecase;

  TodoStore(
      {required this.setTodoDataUsecase, required this.getTodoDataUsecase})
      : super(TodoEntity());

  @override
  void dispose() {
    destroy();
  }

  List<TodoEntity> todoEntities = [];
  TextEditingController name = TextEditingController();
  TextEditingController scheduling = TextEditingController();

  Future<void> getTodoData() async {
    setLoading(true);
    await getTodoDataUsecase().then((value) {
      value.fold(
        (l) => setError(l),
        (r) {
          todoEntities = r;
          todoEntities.sort((m1, m2) {
            var r = m1.date.compareTo(m2.date);
            if (r != 0) return r;
            return m1.date.compareTo(m2.date);
          });

          for (var element in r) {
            update(element);
          }
        },
      );
      setLoading(false);
    });
  }

  Future<void> setTodoData() async {
    List<TodoEntity> todoEntity = todoEntities;

    todoEntity.add(
      TodoEntity(
        name: name.text,
        date: scheduling.text,
      ),
    );
    setLoading(true);
    await setTodoDataUsecase(listTodoEntity: todoEntity).then((value) {
      value.fold(
        (l) => setError(l),
        (r) => r,
      );
      setLoading(false);
    });

    name.clear();
    scheduling.clear();
  }

  Future<void> changeIsFinished(List<TodoEntity> listTodoEntity) async {
    setLoading(true);
    await setTodoDataUsecase(listTodoEntity: listTodoEntity).then((value) {
      value.fold(
        (l) => setError(l),
        (r) => r,
      );
      setLoading(false);
    });

    name.clear();
  }

  Future<void> removeTask(List<TodoEntity> listTodoEntity) async {
    setLoading(true);
    await setTodoDataUsecase(listTodoEntity: listTodoEntity).then((value) {
      value.fold(
        (l) => setError(l),
        (r) => r,
      );
      setLoading(false);
    });

    name.clear();
  }
}
