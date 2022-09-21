import 'package:flutter/widgets.dart';

import 'build_card.dart';

Widget scrollbar() {
  return SizedBox(
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
