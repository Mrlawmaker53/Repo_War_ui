import 'package:flutter/widgets.dart';

Widget cardThird(String picture, String textnews) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          height: 100.0,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(picture), fit: BoxFit.cover),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  10.0,
                ),
                bottomLeft: Radius.circular(10.0),
              )),
        ),
        const SizedBox(width: 10),
        const Expanded(
          child: Text('Liz truzz will be Uk;s next Prime Minster? ',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 20.0,
              )),
        )
      ],
    ),
  );
}
