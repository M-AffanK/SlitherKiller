import 'package:flutter/material.dart';
import 'package:slitherkiller/utils/app_images.dart';
import '../controllers/snake_game_controller.dart';
import 'snake_head.dart';
import 'snake_body.dart';

class GameCell extends StatelessWidget {
  final int index;
  final SnakeGameController controller;

  const GameCell({super.key, required this.index, required this.controller});

  @override
  Widget build(BuildContext context) {
    if (index == controller.snake.last) return const SnakeHead();
    if (controller.snake.contains(index)) return const SnakeBody();
    if (index == controller.food) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(AppImages.ball),
      );
    }
    return Container();
  }
}
