class TaskModel {
  int? id;
  String title;
  String description;
  int isComplete;
  TaskModel({
    this.id,
    required this.title,
    required this.description,
    required this.isComplete,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      isComplete: json['isComplete']??-1,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "description": description,
      "isComplete": isComplete
    };
  }
}
