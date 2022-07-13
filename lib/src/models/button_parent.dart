import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/src/utils/styles/colors.dart';

class ButtonParent {
  ButtonParent({
    required this.width,
    required this.height,
    required this.onTap,
    this.border = 8,
    this.buttonColor = Colors.black,
  });

  final double width;
  final double height;
  final VoidCallback onTap;
  final double border;
  final Color buttonColor;
}
