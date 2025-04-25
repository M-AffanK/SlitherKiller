import 'dart:async';
import 'dart:math';
import 'dart:ui';

class SnakeGameController {
  int rows;
  int columns;
  final Duration tickRate;

  List<int> snake = [];
  int direction = 0;
  int food = 0;
  bool isGameOver = false;
  Timer? timer;

  late VoidCallback onUpdate;
  late VoidCallback onGameOver;

  SnakeGameController({
    required this.rows,
    required this.columns,
    this.tickRate = const Duration(milliseconds: 200),
  });

  void startGame({
    required VoidCallback onUpdate,
    required VoidCallback onGameOver,
  }) {
    this.onUpdate = onUpdate;
    this.onGameOver = onGameOver;

    snake = [columns * 2 + 2, columns * 2 + 3, columns * 2 + 4];
    direction = 1;
    food = generateNewFood();
    isGameOver = false;

    timer?.cancel();
    timer = Timer.periodic(tickRate, (_) => updateGame());
  }

  void updateDimensions(int newRows, int newColumns) {
    if (newRows != rows || newColumns != columns) {
      rows = newRows;
      columns = newColumns;
      food = generateNewFood();
    }
  }

  void updateGame() {
    int newHead = snake.last + direction;

    if (isCollision(newHead)) {
      isGameOver = true;
      timer?.cancel();
      onGameOver();
      return;
    }

    snake.add(newHead);

    if (newHead == food) {
      food = generateNewFood();
    } else {
      snake.removeAt(0);
    }

    onUpdate();
  }

  int generateNewFood() {
    final random = Random();
    int newFood;
    do {
      newFood = random.nextInt(rows * columns);
    } while (snake.contains(newFood));
    return newFood;
  }

  bool isCollision(int position) {
    if (position < 0 || position >= rows * columns) return true;
    if (direction == 1 && position % columns == 0) return true;
    if (direction == -1 && (position + 1) % columns == 0) return true;
    if (snake.contains(position)) return true;
    return false;
  }

  void changeDirection(int newDirection) {
    if ((direction == 1 && newDirection == -1) ||
        (direction == -1 && newDirection == 1) ||
        (direction == columns && newDirection == -columns) ||
        (direction == -columns && newDirection == columns))
      return;

    direction = newDirection;
  }

  void dispose() {
    timer?.cancel();
  }
}
