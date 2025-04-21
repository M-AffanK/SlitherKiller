import 'package:flutter/material.dart';
import 'package:slitherkiller/utils/app_colors.dart';

class SnakeBody extends StatelessWidget {
  const SnakeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: AppColors.lightGreen,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
