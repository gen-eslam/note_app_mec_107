
import 'package:flutter/material.dart';
import 'package:todo_app/utils/app_color.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  const CustomIconButton({
    super.key,
    this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: AppColor.primaryColor,
        ));
  }
}
