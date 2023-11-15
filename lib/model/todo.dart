class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Remove trash', isDone: true ),
      ToDo(id: '02', todoText: 'Fixing needed', isDone: true ),
      ToDo(id: '03', todoText: 'Broken sprinkler', ),
      ToDo(id: '04', todoText: 'Some task', ),
      ToDo(id: '05', todoText: 'Example task', ),
      ToDo(id: '06', todoText: 'Check something', ),
    ];
  }
}