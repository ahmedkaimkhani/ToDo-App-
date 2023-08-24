class ToDo {
  String? id;
  String? todoText;
  late bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Workout', isDone: true),
      ToDo(id: '02', todoText: 'Eat Breakfast', isDone: true),
      ToDo(id: '03', todoText: 'Coding', isDone: true),
      ToDo(id: '04', todoText: 'Namaz', isDone: true),
      ToDo(id: '05', todoText: 'Check Social Accounts'),
      ToDo(id: '06', todoText: 'Work on apps min 2 hour'),
      ToDo(id: '07', todoText: 'Dinner'),
    ];
  }
}
