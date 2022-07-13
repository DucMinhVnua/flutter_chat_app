import 'package:flutter/material.dart';

class Usertile extends StatelessWidget {
  Usertile(
      {Key? key,
      this.title,
      this.subtitle,
      this.backgroundColor = Colors.white,
      this.pathImage = "assets/images/img_test.png",
      this.isGroup = false,
      this.numberGroup,
      this.trailing})
      : super(key: key);

  final Widget? title, subtitle;
  final Color backgroundColor;
  final String pathImage;
  final bool isGroup;
  final int? numberGroup;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title,
      subtitle: subtitle,
      tileColor: backgroundColor,
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(backgroundImage: AssetImage(pathImage)),
          isGroup
              ? Positioned(
                  top: -10,
                  left: -15,
                  child: CircleAvatar(
                    child: Text("+$numberGroup"),
                    backgroundColor: Colors.green.withOpacity(0.8),
                  ))
              : SizedBox()
        ],
      ),
      trailing: trailing,
    );
  }
}
