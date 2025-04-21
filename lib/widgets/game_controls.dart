import 'package:flutter/material.dart';
import 'package:slitherkiller/utils/app_colors.dart';
import '../controllers/snake_game_controller.dart';

class GameControls extends StatelessWidget {
  final SnakeGameController controller;
  final int columns;

  const GameControls({super.key, required this.controller, required this.columns});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_drop_up, color: AppColors.white),
          onPressed: () => controller.changeDirection(-columns),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_left, color: AppColors.white),
              onPressed: () => controller.changeDirection(-1),
            ),
            const SizedBox(width: 50),
            IconButton(
              icon: const Icon(Icons.arrow_right, color: AppColors.white),
              onPressed: () => controller.changeDirection(1),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.arrow_drop_down, color: AppColors.white),
          onPressed: () => controller.changeDirection(columns),
        ),
      ],
    );
  }
}
