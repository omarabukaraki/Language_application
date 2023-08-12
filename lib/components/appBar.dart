import 'package:flutter/material.dart';

class AppBarToku extends StatelessWidget implements PreferredSizeWidget {
  const AppBarToku({super.key, this.textAppBar, required this.color});
  final String? textAppBar;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(textAppBar!),
      backgroundColor: color,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
