class Task {
  final String id;
  final String title;
  final String description;
  final DateTime dateTime;
  bool isCompleted = false;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.dateTime,
    required this.isCompleted,
  });
}
