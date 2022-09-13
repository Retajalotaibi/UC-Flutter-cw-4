import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var prayersList = [
  Prayers(name: "الفجر", time: "3:37AM"),
  Prayers(name: "الشروق", time: "5:04AM"),
  Prayers(name: "الظهر", time: "11:45AM"),
  Prayers(name: "العصر", time: "3:21PM"),
  Prayers(name: "المغرب", time: "6:25PM"),
  Prayers(name: "العشاء", time: "7:50PM"),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget getPrayerLable(Prayers prayer) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 10, 36, 78),
            Color.fromARGB(255, 65, 121, 130)
          ],
        ),
      ),
      child: Row(
        children: <Widget>[
          Text(prayer.time,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              )),
          Spacer(),
          Text(prayer.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              )),
        ],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 6, 21, 45),
                  Color.fromARGB(255, 64, 115, 123)
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.check_box_outline_blank,
                          color: Colors.white,
                        ),
                        Text("العاصمه",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            )),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        child: Text(
                          "12:30",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 65.0,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                      Align(
                        child: Text(
                          "31",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("باقي على الاذان",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ))
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 10, 36, 78),
                          Color.fromARGB(255, 65, 121, 130)
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Expanded(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                        new Expanded(
                          flex: 2,
                          child: Container(
                            child: Text("٢١ فبراير - ٢٠ رجب",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                )),
                          ),
                        ),
                        new Expanded(
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  for (var prayer in prayersList) getPrayerLable(prayer)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Prayers {
  var time;
  var name;

  Prayers({this.time, this.name});
}
       // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Icon(
                  //       Icons.arrow_back_ios_new,
                  //       color: Colors.white,
                  //     ),
                  //     Text("٢١ فبراير - ٢٠ رجب",
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 25.0,
                  //         )),
                  //     Icon(
                  //       Icons.arrow_forward_ios_rounded,
                  //       color: Colors.white,
                  //     )
                  //   ],
                  // ),