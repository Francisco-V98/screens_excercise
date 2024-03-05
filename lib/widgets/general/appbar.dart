import 'package:flutter/material.dart';

class AppBarNew extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? leadingIcon;
  final IconData? actionIcon;
  final Color? backgroundColor;
  final Function()? onpressed;

  const AppBarNew({
    super.key,
    required this.title,
    this.leadingIcon,
    this.actionIcon,
    this.backgroundColor = Colors.transparent,
    this.onpressed,
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
      leading: IconButton(onPressed: onpressed, icon: Icon(leadingIcon)),
      actions: [Icon(actionIcon)],
    );
  }

  @override
  // TOO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
