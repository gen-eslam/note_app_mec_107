import 'package:flutter/material.dart';
import 'package:todo_app/utils/app_color.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.primaryColor,
          leading: const BackButton(
            color: AppColor.whiteColor,
          ),
          title: const Text(
            "Add Note",
            style: TextStyle(
              color: AppColor.whiteColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          child: Column(
            
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: "Title",
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Description",
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Add Note")),
            ],
          ),
        ));
  }
}
