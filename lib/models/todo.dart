class Todo {
  String title;
  String id;
  bool isDone;

  Todo ({
    required this.title,
    required this.id,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}