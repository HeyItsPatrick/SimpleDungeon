import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DungeonProvider.dart';
import 'FancyButton.dart';

class MoveButton extends StatelessWidget {
  final Direction direction;
  const MoveButton({Key key, this.direction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData icon;
    switch (direction) {
      case Direction.LEFT:
        icon = Icons.arrow_left;
        break;
      case Direction.RIGHT:
        icon = Icons.arrow_right;
        break;
      case Direction.UP:
        icon = Icons.arrow_upward;
        break;
      case Direction.DOWN:
        icon = Icons.arrow_downward;
        break;
    }

    return Expanded(
      child: FancyButton(
        child: Container(child: Center(child: Icon(icon))),
        size: 25,
        color: Colors.red,
        horizontalPadding: 5,
        verticalPadding: 5,
        onPressed: () => Provider.of<DungeonProvider>(context, listen: false).moveInDirection(direction),
      ),
    );
  }
}
