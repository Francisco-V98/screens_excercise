import 'package:flutter/material.dart';

class AppBarNew extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? leadingIcon;
  final IconData? actionIcon;
  final Color? backgroundColor;

  const AppBarNew({
    super.key,
    required this.title,
    this.leadingIcon,
    this.actionIcon,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      leading: Icon(leadingIcon),
      actions: [Icon(actionIcon)],
    );
  }

  @override
  // TOO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}