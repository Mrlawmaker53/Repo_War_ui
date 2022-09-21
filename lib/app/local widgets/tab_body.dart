import 'package:flutter/material.dart';

import 'reaction_tab.dart';
import 'related.dart';
import 'research.dart';

Widget tabBodyWidget(BuildContext context) {
    return TabBarView(
      children: [
        researchNewsTab(),
        reactionTab(context),
        relatedTab(),
      ],
    );
  }
