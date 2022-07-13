import 'package:flutter/material.dart';
import 'package:flutter_chat_app/src/components/button_icon.dart';
import 'package:flutter_chat_app/src/utils/styles/colors.dart';

class InputFieldIcon extends StatelessWidget {
  InputFieldIcon({
    Key? key,
    this.prefix = const SizedBox(),
    this.suffix = const SizedBox(),
    this.placeholder,
    this.placeholderColor,
    this.fieldColor,
    this.border = 8,
    this.fontSize = 18,
    this.textColor = Colors.white,
    required this.controller,
  }) : super(key: key);

  final Widget? prefix;
  final Widget? suffix;
  final String? placeholder;
  final Color? placeholderColor;
  final Color? fieldColor;
  final double? border;
  final double? fontSize;
  final Color? textColor;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: fieldColor, borderRadius: BorderRadius.circular(border!)),
      child: Row(
        children: [
          prefix ?? const SizedBox(),
          Expanded(
            child: TextField(
              controller: controller,
              maxLines: null,
              style: TextStyle(fontSize: fontSize, color: textColor),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: placeholder,
                  hintStyle:
                      TextStyle(color: placeholderColor, letterSpacing: 1.2),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          suffix ?? const SizedBox(),
        ],
      ),
    );
  }
}
