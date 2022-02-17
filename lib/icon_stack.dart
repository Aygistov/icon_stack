library icon_stack;

import 'dart:math' as math;
import 'package:flutter/material.dart';

const iconStackWidgetSize = 100.0;

class IconStackWidget extends StatelessWidget {
  final IconStack iconStack;

  const IconStackWidget(
    this.iconStack, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: iconStackWidgetSize,
        width: iconStackWidgetSize,
        child: Stack(
            children:
                iconStack.icons.map((e) => PositionedIconWidget(e)).toList()));
  }
}

class PositionedIconWidget extends StatelessWidget {
  final PositionedIcon positionedIcon;

  const PositionedIconWidget(
    this.positionedIcon, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: iconStackWidgetSize,
      width: iconStackWidgetSize,
      child: FractionallySizedBox(
        widthFactor: positionedIcon.size,
        heightFactor: positionedIcon.size,
        alignment: FractionalOffset(positionedIcon.x, positionedIcon.y),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Transform.rotate(
            angle: positionedIcon.angle,
            child: Transform(
              transform: Matrix4.rotationY(positionedIcon.flip ? math.pi : 0),
              alignment: Alignment.center,
              child: SizedBox(
                height: iconStackWidgetSize,
                width: iconStackWidgetSize,
                child: Icon(
                  positionedIcon.icon,
                  color: positionedIcon.color,
                  size: iconStackWidgetSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PositionedIcon {
  final IconData icon;
  double size;
  double x;
  double y;
  double angle;
  Color? color;
  bool flip;
  PositionedIcon({
    required this.icon,
    required this.size,
    required this.x,
    required this.y,
    this.color,
    this.angle = 0,
    this.flip = false,
  });
}

class IconStack extends ChangeNotifier {
  final List<PositionedIcon> icons;
  IconStack(this.icons);
}
