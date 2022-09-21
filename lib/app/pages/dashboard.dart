import 'package:demo_solo/app/utils/string.dart';
import 'package:flutter/material.dart';

import '../local widgets/columnwidget.dart';
import '../local widgets/tab_body.dart';
import '../local widgets/tabviewidget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: null,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: 40),
              //ImageCode,
              imageCodeWidget(),

              //RowBar
              rowBarWidget(),

              //TabViewHeader
              tabViewWidget(),

              //TabBody
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.36,
                child: tabBodyWidget(context),
              ),

              //BottomNavigationBar
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pink,
          items: [
            bottomItemWidget(
              icon: const Icon(
                Icons.build_rounded,
                color: Colors.grey,
              ),
              activeIcon: const Icon(
                Icons.build_rounded,
                color: Colors.pinkAccent,
              ),
            ),
            bottomItemWidget(
              icon: const Icon(
                Icons.alarm_add,
                color: Colors.grey,
              ),
              activeIcon: const Icon(
                Icons.build_rounded,
                color: Colors.pinkAccent,
              ),
            ),
            bottomItemWidget(
              icon: const Icon(
                Icons.h_mobiledata,
                color: Colors.grey,
              ),
              activeIcon: const Icon(
                Icons.build_rounded,
                color: Colors.pinkAccent,
              ),
            ),
            bottomItemWidget(
              icon: const Icon(
                Icons.alarm_add,
                color: Colors.grey,
              ),
              activeIcon: const Icon(
                Icons.build_rounded,
                color: Colors.pinkAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomItemWidget(
      {required Widget icon, required Widget activeIcon}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: '',
      activeIcon: activeIcon,
    );
  }

  Widget imageCodeWidget() {
    return SizedBox(
      child: Stack(
        children: [
          Image.asset('asset/abc.png'),
          Positioned(
            bottom: 10,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Text(
                        "Will China invade Taiwan before end september? ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    // Spacer(),
                    Icon(
                      Icons.wallet,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.access_alarm,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget rowBarWidget() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueAccent,
              Colors.pinkAccent,
            ],
          ),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
          )),
      child: Row(children: [
        //..colmun1 start
        columnWidget(
            w1: Text(
              kChanceVar.toUpperCase(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
            w2: Text(
              kChanceVal.toUpperCase(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            )),
        columnWidget(
          w2: const Icon(
            Icons.arrow_upward,
            size: 40,
            color: Colors.green,
          ),
        ),
        columnWidget(
          w1: Text(
            kMoneyVar.toUpperCase(),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
          w2: Text(
            kMoneyVal.toUpperCase(),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
        ),

        columnWidget(
          w1: Text(
            kYesVal.toUpperCase(),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          w2: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 5.0,
                top: 2.0,
                bottom: 2.0,
              ),
              child: Text(kYesVar.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),

        columnWidget(
          w1: Text(
            kNoVal.toUpperCase(),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          w2: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 223, 60, 114),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 5.0,
                top: 2.0,
                bottom: 2.0,
              ),
              child: Text(kNoVar.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ]),
    );
  }
}
