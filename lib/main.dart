import 'package:clock/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clock App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class Alarm {
  String am_pm;
  String time;
  String reperating;
  String remeaing;
  bool active;

  Alarm({this.am_pm, this.time, this.reperating, this.remeaing, this.active});
}

List<Alarm> myAlarms = [
  Alarm(
      am_pm: 'AM',
      time: '03:00',
      reperating: 'One time',
      remeaing: 'Alarm in 11h 42m',
      active: true),
  Alarm(
      am_pm: 'PM',
      time: '09:45',
      reperating: 'Mon Sun',
      remeaing: 'Alarm in 1h 59m',
      active: false),
  Alarm(
      am_pm: 'AM',
      time: '22:15',
      reperating: 'Daily',
      remeaing: 'Alarm in 19h 01m',
      active: true),
  Alarm(
      am_pm: 'PM',
      time: '05:55',
      reperating: 'Fri',
      remeaing: 'Alarm in 21h 12m',
      active: false),
  Alarm(
      am_pm: 'AM',
      time: '14:14',
      reperating: 'One time',
      remeaing: 'Alarm in 5h 55m',
      active: true),
];

class Clock {
  String flag;
  String title;
  String desc;
  String time;

  Clock({this.flag, this.title, this.desc, this.time});
}

TextStyle selectedText = TextStyle(
  color: yellowColor,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);
TextStyle normalText = TextStyle(
  color: Colors.white,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);
List<Clock> items = [
  Clock(
      flag: 'assets/img/egypt.png',
      title: 'Cairo',
      desc: 'Today, +2HRS',
      time: '14:25'),
  Clock(
      flag: 'assets/img/london.png',
      title: 'London',
      desc: 'Today, +3HRS',
      time: '04:55'),
  Clock(
      flag: 'assets/img/france.png',
      title: 'Paris',
      desc: 'Today, +0HRS',
      time: '21:00'),
  Clock(
      flag: 'assets/img/usa.png',
      title: 'New York',
      desc: 'Today, -1HRS',
      time: '18:05'),
  Clock(
      flag: 'assets/img/china.png',
      title: 'China',
      desc: 'Today, +6HRS',
      time: '03:59'),
];
int selectMenu = 4;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: <Widget>[
          Container(
            width: 68,
            height: MediaQuery.of(context).size.height,
            color: leftSide,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Icon(
                      Icons.blur_on,
                      color: yellowColor,
                      size: 35,
                    ),
                  ),
                ),
                Align(
                  child: Container(
                    height: 600,
                    width: 68,
                    margin: EdgeInsets.only(top: 99),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectMenu = 5;
                                });
                              },
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  width: 90,
                                  height: 68,
//                    color: Colors.red,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            'Alarm',
                                            style: selectMenu == 5
                                                ? selectedText
                                                : normalText,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: -10,
                                          left: 28,
                                          child: selectMenu == 5
                                              ? Transform.translate(
                                                  offset: Offset(-2.0, 5.0),
                                                  child: Transform.rotate(
                                                    angle: math.pi / 2,
                                                    child: Image.asset(
                                                      'assets/img/triangle.png',
                                                      width: 50,
                                                      height: 45,
                                                    ),
                                                  ))
                                              : Container(),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectMenu = 4;
                                });
                              },
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  width: 100,
                                  height: 68,
//                    color: Colors.red,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            'WorldClock',
                                            style: selectMenu == 4
                                                ? selectedText
                                                : normalText,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: -10,
                                          left: 28,
                                          child: selectMenu == 4
                                              ? Transform.translate(
                                                  offset: Offset(-2.0, 5.0),
                                                  child: Transform.rotate(
                                                    angle: math.pi / 2,
                                                    child: Image.asset(
                                                      'assets/img/triangle.png',
                                                      width: 50,
                                                      height: 45,
                                                    ),
                                                  ))
                                              : Container(),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectMenu = 3;
                                });
                              },
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  width: 100,
                                  height: 68,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            'StopWatch',
                                            style: selectMenu == 3
                                                ? selectedText
                                                : normalText,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: -10,
                                          left: 28,
                                          child: selectMenu == 3
                                              ? Transform.translate(
                                                  offset: Offset(-2.0, 5.0),
                                                  child: Transform.rotate(
                                                    angle: math.pi / 2,
                                                    child: Image.asset(
                                                      'assets/img/triangle.png',
                                                      width: 50,
                                                      height: 45,
                                                    ),
                                                  ))
                                              : Container(),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectMenu = 2;
                                });
                              },
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  width: 100,
                                  height: 68,
//                    color: Colors.red,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            'BedTime',
                                            style: selectMenu == 2
                                                ? selectedText
                                                : normalText,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: -10,
                                          left: 28,
                                          child: selectMenu == 2
                                              ? Transform.translate(
                                                  offset: Offset(-2.0, 5.0),
                                                  child: Transform.rotate(
                                                    angle: math.pi / 2,
                                                    child: Image.asset(
                                                      'assets/img/triangle.png',
                                                      width: 50,
                                                      height: 45,
                                                    ),
                                                  ))
                                              : Container(),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectMenu = 1;
                                });
                              },
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  width: 100,
                                  height: 68,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            'Timer',
                                            style: selectMenu == 1
                                                ? selectedText
                                                : normalText,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: -10,
                                          left: 28,
                                          child: selectMenu == 1
                                              ? Transform.translate(
                                                  offset: Offset(-2.0, 5.0),
                                                  child: Transform.rotate(
                                                    angle: math.pi / 2,
                                                    child: Image.asset(
                                                      'assets/img/triangle.png',
                                                      width: 50,
                                                      height: 45,
                                                    ),
                                                  ))
                                              : Container(),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Icon(
                      Icons.settings,
                      color: Colors.blue,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          selectMenu == 4
              ? WorldClock()
              : (selectMenu == 2
                  ? BedTime()
                  : (selectMenu == 5 ? Alarm() : Container()))
        ],
      ),
    );
  }

  Widget Alarm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 44),
      child: Container(
        width: MediaQuery.of(context).size.width - 98,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/img/1.jpg')),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          ' Good Morning, ',
                          style: TextStyle(
                              fontSize: 14,
                              color: textcolor,
                              fontFamily: GoogleFonts.breeSerif().fontFamily),
                        ),
                        Text(
                          'Eslam',
                          style: TextStyle(
                              fontSize: 20,
                              color: textcolor,
                              letterSpacing: 1.1,
                              fontFamily: GoogleFonts.fredokaOne()
                                  .fontFamily //breeSerif
                              ),
                        ),
                      ],
                    ),
                    Text(
                      ' Your timezone UTC +3',
                      style: TextStyle(
                          fontSize: 12, color: textcolor.withOpacity(.5)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SleekCircularSlider(
              appearance: CircularSliderAppearance(
                  startAngle: 270,
                  angleRange: 360,
                  customColors: CustomSliderColors(
                    progressBarColor: progressColor,
                    trackColor: progressColor.withOpacity(.3),
                    dotColor: Colors.transparent,
                    hideShadow: true,
                  ),
                  size: 235,
                  customWidths:
                      CustomSliderWidths(progressBarWidth: 8, trackWidth: 3)),
              min: 0,
              max: 100,
              initialValue: 80,
              innerWidget: (double value) {
                return Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Monday 18',
                        style:
                            TextStyle(fontSize: 14, color: bedtimeTitleColor),
                      ),
                      Text(
                        '09:45',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: GoogleFonts.volkhov().fontFamily,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/img/sun.png',
                        width: 70,
                        height: 70,
                      ),
                    ],
                  ),
                );
              },
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ListView.builder(
                  itemBuilder: (context, int index) {
                    return Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        myAlarms[index].am_pm,
                                        style: TextStyle(
                                            color: bedtimeTitleColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        myAlarms[index].time,
                                        style: TextStyle(
                                            color: bedtimeTitleColor,
                                            fontSize: 25,
                                        fontFamily: GoogleFonts.acme().fontFamily,
                                        fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        myAlarms[index].reperating,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts.acme().fontFamily,
                                            fontSize: 16,
                                            letterSpacing: 1.2),
                                      ),
                                      Text(myAlarms[index].remeaing,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: bedtimeTitleColor.withOpacity(.5))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CupertinoSwitch(
                              value: myAlarms[index].active,
                              onChanged: (bool x) {
                                setState(() {
                                  myAlarms[index].active = !myAlarms[index].active;
                                });
                              },
                              activeColor: progressColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: index == 4 ? 0 : 20,
                        ),
                      ],
                    );
                  },
                  itemCount: myAlarms.length,
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                color: buttoncolor,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget BedTime() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 44),
      child: Container(
        width: MediaQuery.of(context).size.width - 98,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/img/1.jpg')),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          ' Good Morning, ',
                          style: TextStyle(
                              fontSize: 14,
                              color: textcolor,
//                                        fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.ubuntu().fontFamily),
                        ),
                        Text(
                          'Eslam',
                          style: TextStyle(
                              fontSize: 20,
                              color: textcolor,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.bold,
                              fontFamily:
                                  GoogleFonts.ubuntu().fontFamily //breeSerif
                              ),
                        ),
                      ],
                    ),
                    Text(
                      ' Your timezone UTC +3',
                      style: TextStyle(
                          fontSize: 12, color: textcolor.withOpacity(.5)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/img/sleeping.png',
              width: 200,
              height: 200,
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Introducing Bedtime',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: bedtimeTitleColor,
                                      fontFamily:
                                          GoogleFonts.ubuntu().fontFamily,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Going to bed and waking up at the same time every day are key to healthy sleep',
                              style: TextStyle(
                                fontSize: 16,
                                color: bedtimeTitleColor,
                                height: 1.5,
                                fontFamily: GoogleFonts.ubuntu().fontFamily,
//                          fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Bedtime can help',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: bedtimeTitleColor,
//                          fontFamily: GoogleFonts.ubuntu().fontFamily,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Answer a few simple questions to set up a recurring wake-up alarm and get a reminder when it's bedtime",
                              style: TextStyle(
                                fontSize: 16,
                                color: bedtimeTitleColor,
                                height: 1.4,
                                fontFamily: GoogleFonts.ubuntu().fontFamily,
//                          fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                color: buttoncolor,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: FlatButton(
                child: Text(
                  'Get Start',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: GoogleFonts.ubuntu().fontFamily //bre
                      ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget WorldClock() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 44),
      child: Container(
        width: MediaQuery.of(context).size.width - 98,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/img/1.jpg')),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          ' Good Morning, ',
                          style: TextStyle(
                              fontSize: 14,
                              color: textcolor,
//                                        fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.breeSerif().fontFamily),
                        ),
                        Text(
                          'Eslam',
                          style: TextStyle(
                              fontSize: 20,
                              color: textcolor,
                              letterSpacing: 1.1,
                              fontFamily: GoogleFonts.fredokaOne()
                                  .fontFamily //breeSerif
                              ),
                        ),
                      ],
                    ),
                    Text(
                      ' Your timezone UTC +3',
                      style: TextStyle(
                          fontSize: 12, color: textcolor.withOpacity(.5)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Image.asset(
              'assets/img/location.png',
              width: 200,
              height: 200,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ListView.builder(
                  itemBuilder: (context, int index) {
                    return Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    items[index].flag,
                                    width: 45,
                                    height: 45,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        items[index].title,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts.breeSerif()
                                                .fontFamily,
                                            fontSize: 16,
                                            letterSpacing: 1.2),
                                      ),
                                      Text(items[index].desc,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              items[index].time,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: leftSide,
                                  fontFamily:
                                      GoogleFonts.fredokaOne().fontFamily),
                            )
                          ],
                        ),
                        SizedBox(
                          height: index == 4 ? 0 : 20,
                        ),
                      ],
                    );
                  },
                  itemCount: items.length,
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                color: buttoncolor,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
