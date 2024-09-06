import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.purpleLight,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ListViewItem();
        },
      ),
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
