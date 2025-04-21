import 'package:flutter/material.dart';
import 'package:slitherkiller/utils/app_colors.dart';

class SnakeHead extends StatelessWidget {
  const SnakeHead({super.key});

  Widget _eye() => Container(
        width: 4,
        height: 4,
        decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          Positioned(top: 4, left: 4, child: _eye()),
          Positioned(top: 4, right: 4, child: _eye()),
          Positioned(bottom: 2, left: 8, right: 8, child: Container(height: 3, color: Colors.red)),
        ],
      ),
    );
  }
}
