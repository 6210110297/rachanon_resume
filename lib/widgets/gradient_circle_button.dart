import 'package:flutter/material.dart';

class GradientCircleButton extends StatelessWidget {
  final String tooltip;
  final Widget child;
  final VoidCallback onPressed;

  GradientCircleButton(
      {this.tooltip = '', required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Ink(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: <Color>[Colors.blue[800]!, Colors.pink[800]!])),
            child: child),
      ),
    );
  }
}
