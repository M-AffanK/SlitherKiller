import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slitherkiller/utils/app_colors.dart';
import 'package:slitherkiller/utils/app_images.dart';
import '../controllers/snake_game_controller.dart';
import '../widgets/game_controls.dart';
import '../widgets/game_cell.dart';

class SnakeGame extends StatefulWidget {
  @override
  _SnakeGameState createState() => _SnakeGameState();
}

class _SnakeGameState extends State<SnakeGame> {
  static const int rows = 20;
  static const int columns = 20;
  late SnakeGameController controller;

  @override
  void initState() {
    super.initState();
    controller = SnakeGameController(rows: rows, columns: columns);
    controller.startGame(onUpdate: _onUpdate, onGameOver: _onGameOver);
  }

  void _onUpdate() => setState(() {});
  void _onGameOver() => setState(() {});
  void restartGame() =>
      controller.startGame(onUpdate: _onUpdate, onGameOver: _onGameOver);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final cellSize =
              (constraints.maxWidth / columns)
                  .clamp(0, constraints.maxHeight / rows)
                  .toDouble();
          final boardWidth = cellSize * columns;
          final boardHeight = cellSize * rows;

          return Center(
            child: Stack(
              children: [
                Container(
                  width: boardWidth,
                  height: boardHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.grassBackground),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columns,
                    ),
                    itemCount: rows * columns,
                    itemBuilder:
                        (_, index) =>
                            GameCell(index: index, controller: controller),
                  ),
                ),
                if (!controller.isGameOver)
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: GameControls(
                      controller: controller,
                      columns: columns,
                    ),
                  ),
                if (controller.isGameOver)
                  Container(
                    width: boardWidth,
                    height: boardHeight,
                    color: Colors.black.withOpacity(0.7),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Game Over",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 32,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.green,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: restartGame,
                            child: const Text(
                              "Restart",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
