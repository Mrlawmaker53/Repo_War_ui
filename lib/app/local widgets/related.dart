import 'package:flutter/cupertino.dart';

import 'cardThird.dart';

relatedTab() {
    return SizedBox(
        height: 200.0,
        width: 100.0,
        child: ListView(
          children: [
            CardThird(
              'asset/abc.png',
              'Liz truzz will be Uk;s next Prime Minster? ',
            ),
            const SizedBox(
              height: 4,
            ),
            CardThird(
              'asset/abc.png',
              'Liz truzz will be Uk;s next Prime Minster? ',
            ),
          ],
        ));
  }
