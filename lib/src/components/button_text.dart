// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_chat_app/src/models/button_parent.dart';

class ButtonText extends StatelessWidget {
  const ButtonText(
      {Key? key,
      required this.buttonParent,
      required this.title,
      this.titleColor = Colors.white,
      this.titleSize = 18,
      this.isTitleUpperCase = false,
      this.titleWeight = FontWeight.w500})
      : super(key: key);

  final ButtonParent buttonParent;
  final String title;
  final Color titleColor;
  final double titleSize;
  final bool isTitleUpperCase;
  final FontWeight titleWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: buttonParent.onTap,
        child: Container(
            width: buttonParent.width,
            height: buttonParent.height,
            decoration: BoxDecoration(
                color: buttonParent.buttonColor,
                borderRadius: BorderRadius.circular(buttonParent.border)),
            child: Center(
                child: Text(
              isTitleUpperCase ? '$title'.toUpperCase() : '$title',
              style: TextStyle(
                  color: titleColor,
                  fontSize: titleSize,
                  fontWeight: titleWeight),
            ))));
  }
}
