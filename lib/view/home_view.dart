import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/model/task_model.dart';
import 'package:todo_app/utils/app_color.dart';
import 'package:todo_app/view/edit_note_view.dart';
import 'package:todo_app/widgets/custom_floating_action_button.dart';
import 'package:todo_app/widgets/custom_icon_button.dart';
import 'package:todo_app/widgets/list_view_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  List<Widget> bodyWidgets = [];
  List<TaskModel> completeTasks = [];
  @override
  void initState() {
    completeTasks.addAll(TaskModel.tasks.where((e) => e.isDone == 1));

    bodyWidgets = [
      ListView.builder(
        itemCount: TaskModel.tasks.length,
        itemBuilder: (context, index) {
          return ListViewItem(
            taskModel: TaskModel.tasks[index],
            widgets: [
              const Spacer(),
              CustomIconButton(
                icon: Icons.edit,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const EditNoteView();
                      },
                    ),
                  );
                },
              ),
              CustomIconButton(icon: Icons.delete_outline, onPressed: () {}),
              CustomIconButton(
                icon: Icons.check_circle_outline_outlined,
                onPressed: () {},
              )
            ],
          );
        },
      ),
      ListView.builder(
        itemCount: completeTasks.length,
        itemBuilder: (context, index) {
          return ListViewItem(
            taskModel: completeTasks[index],
            widgets: const [],
          );
        },
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.purpleLight,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // print(jsonTasks[0]["title"]);
              // log(taskList[0].title);
            },
            icon: const Icon(
              Icons.notifications,
              color: AppColor.whiteColor,
            ),
          )
        ],
        backgroundColor: AppColor.primaryColor,
        title: const Text(
          "TODO APP",
          style: TextStyle(
            color: AppColor.whiteColor,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: bodyWidgets[selectedIndex],
      floatingActionButton: const CustomFloatingActionButton(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: Colors.grey.shade400,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "All",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist),
            label: "Completed",
          ),
        ],
      ),
    );
  }
}
