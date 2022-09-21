import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget expertOpinionWidget() {
  return Column(
    children: [
      // row1
      Row(
        children: const [
          Text('215 Expert Opinion'),
        ],
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xffEBC3EA).withOpacity(0.8),
                    width: 10,
                  ),
                  color: Color(0xffC930C5).withOpacity(0.4),
                ),
                child: const Center(
                    child: Text('12%',
                        style: TextStyle(
                            color: Color(0xffE432C1),
                            fontWeight: FontWeight.bold)))),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                LinearProgressIndicator(
                  backgroundColor: Color(0xffD9D9D9),
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xffE432C1)),
                  value: 0.3,
                  minHeight: 8,
                ),
                SizedBox(height: 8),
                LinearProgressIndicator(
                  backgroundColor: Color(0xffD9D9D9),
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xff687684)),
                  value: 0.8,
                  minHeight: 8,
                ),
                SizedBox(height: 8),
                LinearProgressIndicator(
                  backgroundColor: Color(0xffD9D9D9),
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xff687684)),
                  value: 0.1,
                  minHeight: 8,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: Cross,
              children: const [
                Text(
                  '12 % Buy yes',
                  style: TextStyle(
                    color: Color(0xffE432C1),
                  ),
                ),
                Text(
                  '88% buy No',
                  style: TextStyle(color: Color.fromARGB(255, 63, 58, 58)),
                ),
                Text(
                  '1% No Resolve',
                  style: TextStyle(color: Color.fromARGB(255, 63, 58, 58)),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
