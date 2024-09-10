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

  static List<TaskModel> tasks = [
    TaskModel(
      id: 1,
      title: "Title 1",
      description: "Description 1",
      isDone: 0,
    ),
    TaskModel(
      id: 1,
      title: "Title 2",
      description: "Description 2",
      isDone: 1,
    ),
    TaskModel(
      id: 1,
      title: "Title 3",
      description: "Description 3",
      isDone: 0,
    ),
    TaskModel(
      id: 1,
      title: "Title 4",
      description: "Description 4",
      isDone: 1,
    ),
    TaskModel(
      id: 1,
      title: "Title 5",
      description: "Description 5",
      isDone: 0,
    ),
    TaskModel(
      id: 1,
      title: "Title 6",
      description: "Description 6",
      isDone: 1,
    ),
    TaskModel(
      id: 1,
      title: "Title 7",
      description: "Description 7",
      isDone: 1,
    ),
  ];
}
