import 'package:flutter/material.dart';

Widget buildListtile(Widget title, ImageProvider image, Color backColor) {
  return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: backColor,
        child: CircleAvatar(
          backgroundImage: image,
        ),
      ),
      title: title);
}
