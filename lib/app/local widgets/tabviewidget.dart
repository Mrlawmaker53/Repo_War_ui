  import 'package:flutter/material.dart';

import '../utils/string.dart';

Widget tabViewWidget() {
    return TabBar(
      isScrollable: true,
      indicatorColor: const Color(0xFFE432C1),
      unselectedLabelColor: Colors.grey,
      labelColor: const Color(0xFFE432C1),
      tabs: [
        tabNameWidget(ktab1),
        tabNameWidget(ktab2),
        tabNameWidget(ktab3),
      ],
    );
  }

  Padding tabNameWidget(String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(value),
    );
  }
