
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'buildListTilte.dart';
import 'emoji.dart';

Widget SecondTab(BuildContext context) {
  return ListView(
    children: [
      Row(
        children: const [
          Expanded(
            flex: 1,
            child: Icon(Icons.abc),
          ),
          Expanded(
            flex: 1,
            child: Text('215'),
          ),
          Expanded(
            flex: 1,
            child: Icon(Icons.comment),
          ),
          Expanded(flex: 1, child: Text('95k')),
          Expanded(flex: 6, child: Icon(Icons.thumbs_up_down))
        ],
      ),
      buildListtile(
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(children: const [
            Text.rich(
              overflow: TextOverflow.ellipsis,
              TextSpan(
                  text: 'Linda',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'If China dose indeed attack Taiwoon \nsoon octobar is the likely time what are\nsince the ',
                      style: TextStyle(
                        overflow: TextOverflow.clip,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ]),
            ),
          ]),
        ),
        const AssetImage('asset/abc.png'),
        Colors.pinkAccent,
      ),
      buildListtile(
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(children: const [
            Text.rich(
              overflow: TextOverflow.ellipsis,
              TextSpan(
                  text: 'Linda',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'If China dose indeed attack Taiwoon \nsoon octobar is the likely time what are\nsince the ',
                      style: TextStyle(
                        overflow: TextOverflow.clip,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ]),
            ),
          ]),
        ),
        const AssetImage('asset/abc.png'),
        Colors.grey,
      ),
      buildListtile(
        const ListTile(
          title: Text(
            'LInda',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
              'If China dose indeed attack Taiwoon soon octobar is the likely time since the ',
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          trailing: Text(
            'more',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const AssetImage('asset/abc.png'),
        Colors.grey,
      ),
      Container(
        padding: const EdgeInsets.only(left: 20, right: 5),
        child: ListTile(
          horizontalTitleGap: 40,
          title: SizedBox(width: 80),
          leading: const SizedBox(
            width: 300,
            height: 60,
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Add Comment.'),
              ),
            ),
          ),
          trailing: SizedBox(
            width: 200,
            height: 10.0,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: emjo),
          ),
        ),
      )
    ],
  );
}
