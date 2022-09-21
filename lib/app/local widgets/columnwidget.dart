 import 'package:flutter/widgets.dart';

Expanded columnWidget({Widget? w1, Widget? w2}) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          w1 ?? const SizedBox(),
          w2 ?? const SizedBox(),
        ],
      ),
    );
  }
