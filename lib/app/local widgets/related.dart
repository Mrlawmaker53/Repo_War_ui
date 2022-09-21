import 'package:flutter/cupertino.dart';

import 'card_third.dart';

relatedTab() {
    return SizedBox(
        height: 200.0,
        width: 100.0,
        child: ListView(
          children: [
            cardThird(
              'asset/abc.png',
              'Liz truzz will be Uk;s next Prime Minster? ',
            ),
            const SizedBox(
              height: 4,
            ),
            cardThird(
              'asset/abc.png',
              'Liz truzz will be Uk;s next Prime Minster? ',
            ),
          ],
        ));
  }
