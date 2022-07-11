import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../../../stores/stores.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final todoStore = Modular.get<TodoStore>();

  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    onLoad();
    super.initState();
  }

  Future<void> onLoad() async {
    await todoStore.getTodoData();

    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> selectDate({
    required BuildContext context,
  }) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: selectedDate,
      lastDate: DateTime(2023),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        todoStore.scheduling.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
        title: 'POC',
        isBackground: false,
        body: todoStore.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: todoStore.name,
                    onChanged: (String? value) {
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        )),
                  ),
                  SizedBox(height: Dots.p8.value),
                  Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              selectDate(
                                context: context,
                              );
                            },
                            child: TextFormField(
                              enabled: false,
                              controller: todoStore.scheduling,
                              onChanged: (String? value) {
                                setState(() {});
                              },
                              decoration: const InputDecoration(
                                  hintText: 'Data de agendamento',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                            ),
                          )),
                      SizedBox(width: Dots.p8.value),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: todoStore.name.text.isEmpty ||
                                    todoStore.scheduling.text.isEmpty
                                ? null
                                : () async {
                                    await todoStore.setTodoData();

                                    await todoStore.getTodoData();

                                    setState(() {});
                                  },
                            child: const Text('Clique')),
                      ),
                    ],
                  ),
                  SizedBox(height: Dots.p32.value),
                  Expanded(
                    child: ListView.builder(
                      itemCount: todoStore.todoEntities.length,
                      itemBuilder: (_, i) {
                        var todo = todoStore.todoEntities[i];

                        return Padding(
                          padding: EdgeInsets.only(bottom: Dots.p4.value),
                          child: Dismissible(
                            key: Key(todo.name),
                            onDismissed: (DismissDirection? direction) async {
                              todoStore.todoEntities.removeAt(i);

                              await todoStore
                                  .removeTask(todoStore.todoEntities);
                              setState(() {});
                            },
                            child: Card(
                              color:
                                  todo.isFinished ? Colors.green : Colors.blue,
                              child: ListTile(
                                onTap: () async {
                                  todoStore.todoEntities[i].isFinished =
                                      !todo.isFinished;

                                  await todoStore
                                      .changeIsFinished(todoStore.todoEntities);

                                  setState(() {});
                                },
                                onLongPress: () async {
                                  todoStore.todoEntities.removeAt(i);

                                  await todoStore
                                      .removeTask(todoStore.todoEntities);
                                  setState(() {});
                                },
                                title: Text(
                                  todo.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                subtitle: Text(
                                  todo.date,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ));
  }
}
