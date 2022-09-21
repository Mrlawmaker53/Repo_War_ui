import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildCard() {
  return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Thehill'),
                Text('1 sept'),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Expanded(
                child: Text(
                    'last week ,the dire aerinng the apperard tin the wll strint journal ecornomist and roeggin affirs aboutchina immient awt wit or the d',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.abc),
              ],
            )
          ],
        ),
      ));
}
