import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, this.color, this.text, this.onTap});
  final Color? color;
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          padding: const EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 60,
          child: Text(
            text!,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
