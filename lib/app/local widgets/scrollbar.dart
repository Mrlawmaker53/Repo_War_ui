import 'package:flutter/widgets.dart';

import 'buildCard.dart';

Widget scrollbar() {
  return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildCard(),
          const SizedBox(
            width: 10,
          ),
          buildCard(),
          const SizedBox(
            width: 10,
          ),
          buildCard(),
        ],
      ));
}
