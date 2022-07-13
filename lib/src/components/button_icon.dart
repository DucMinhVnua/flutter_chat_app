import 'package:flutter/material.dart';
import 'package:flutter_chat_app/src/models/button_parent.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    Key? key,
    this.buttonParent,
    required this.icon,
  }) : super(key: key);

  final ButtonParent? buttonParent;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonParent?.onTap,
      child: Container(
        width: buttonParent?.width,
        height: buttonParent?.height,
        decoration: BoxDecoration(
            color: buttonParent?.buttonColor,
            borderRadius: BorderRadius.circular(buttonParent?.border ?? 0)),
        child: icon,
      ),
    );
  }
}
