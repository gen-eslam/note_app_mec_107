import 'package:flutter/material.dart';
import 'package:todo_app/utils/app_color.dart';
import 'package:todo_app/view/add_note_view.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColor.primaryColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const AddNoteView();
          }));
        },
        child: const Icon(
          Icons.add,
          color: AppColor.whiteColor,
        ));
  }
}
