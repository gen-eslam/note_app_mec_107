class TaskModel {
  int id;
  String title;
  String description;
  int isDone;
  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.isDone,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      isDone: json['isDone'],
    );
  }
}
