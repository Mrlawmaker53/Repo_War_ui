import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'reactionTab.dart';
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
