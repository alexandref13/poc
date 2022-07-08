class TodoEntity {
  final String name;
  final String date;
  bool isFinished;

  TodoEntity({
    this.date = '',
    this.isFinished = false,
    this.name = '',
  });
}
