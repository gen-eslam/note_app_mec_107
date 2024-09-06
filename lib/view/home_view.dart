import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/model/task_model.dart';
import 'package:todo_app/utils/app_color.dart';
import 'package:todo_app/widgets/custom_floating_action_button.dart';
import 'package:todo_app/widgets/list_view_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  List<Map<String, dynamic>> jsonTasks = [
    {
      "title": "Task 1",
      "description": "Description 1",
      "id": 1,
      "isDone": 0,
    },
    {
      "title": "Task 2",
      "description": "Description 2",
      "id": 1,
      "isDone": 0,
    },
    {
      "title": "Task 3",
      "description": "Description 3",
      "id": 1,
      "isDone": 0,
    },
    {
      "title": "Task 4",
      "description": "Description 4",
      "id": 1,
      "isDone": 0,
    },
    {
      "title": "Task 5",
      "description": "Description 5",
      "id": 1,
      "isDone": 0,
    },
    {
      "title": "Task 1",
      "description": "Description 1",
      "id": 1,
      "isDone": 0,
    }
  ];

  List<TaskModel> taskList = [];
  List<Widget> bodyWidgets = [];
  @override
  void initState() {
    taskList = jsonTasks.map((e) => TaskModel.fromJson(e)).toList();
    bodyWidgets = [
      ListView.builder(
        itemCount: jsonTasks.length,
        itemBuilder: (context, index) {
          return ListViewItem(
            taskModel: taskList[index],
          );
        },
      ),
      Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
      )
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
              print(jsonTasks[0]["title"]);
              log(taskList[0].title);
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
