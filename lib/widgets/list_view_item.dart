import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/model/task_model.dart';
import 'package:todo_app/utils/app_color.dart';
import 'package:todo_app/view/edit_note_view.dart';
import 'package:todo_app/widgets/custom_icon_button.dart';

class ListViewItem extends StatelessWidget {
  final TaskModel taskModel;
  final List<Widget> widgets;
  const ListViewItem({
    super.key,
    required this.taskModel,
    required this.widgets,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColor.whiteColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(taskModel.title),
                  Text(taskModel.description),
                ],
              ),
              ...widgets,
            ],
          ),
        ));
  }
}
