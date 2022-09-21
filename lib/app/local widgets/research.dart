import 'package:flutter/widgets.dart';

import 'exportWidget.dart';
import 'scrollbar.dart';

researchNewsTab() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 15,
    ),
    child: Column(
      children: [
        //Row1
        expertOpinionWidget(),

        const SizedBox(height: 10),

        //scrollableListViewWidget(),
        //  ResarchNewsContent()
        scrollbar()
        //Row2
      ],
    ),
  );
}
