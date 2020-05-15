import 'dart:async';
import 'dart:ui';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  final int delayedAmount = 100;
  double _scale;
  AnimationController _controller;
  TabController controller;
  Timer _timer;
  int _selectedIndex = 0;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
//    _timer = Timer(Duration(seconds: 10), () {
//      Navigator.push(
//          context, MaterialPageRoute(builder: (context) => SplashScreen()));
//    });

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  AppBar appBar() {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Colors.indigo,
              Colors.lightBlueAccent,
            ],
          ),
        ),
      ),
      title: Text(
        'mrhmamun.com',
        style: GoogleFonts.dancingScript(
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
      centerTitle: true,
      actions: <Widget>[
        Center(
          child: Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen()));
              },
              child: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Center(
          child: Container(
            child: GestureDetector(
              onTap: null,
              child: Text(
                'Blog',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Center(
          child: Container(
            child: GestureDetector(
              onTap: null,
              child: Text(
                'Resume',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Center(
          child: Container(
            child: GestureDetector(
              onTap: null,
              child: Text(
                'About',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: null,
              child: Text(
                'Contact',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _laravelTraining(context) {
    return Expanded(
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
        color: Color(0x00000000),
        child: FlipCard(
          direction: FlipDirection.VERTICAL,
          speed: 1000,
          onFlipDone: (status) {
            print(status);
          },
          front: Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height*.8,
            width: MediaQuery.of(context).size.width * .25,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'March 2020',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Web App Development With Laravel & Vue.Js',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('BASIS Institute of Technology & Management (BITM)',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ],
            ),
          ),
          back: Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height*.8,
            width: MediaQuery.of(context).size.width * .23,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Course Outline',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'This course was specially designed to update technical knowledge and skills of Web Developent(Backend) to cope with the requirement of PHP, Laravel & Vue.js occupations of the Job sector. Focus area was Laravel, OOP, MVC, MySql DB, API Creating & Testing!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _flutterTraining(context) {
    return Expanded(child: Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.VERTICAL,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height*.8,
          width: MediaQuery.of(context).size.width * .25,
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'December 2019',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Android & IOS App Development With Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('BASIS Institute of Technology & Management (BITM)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ],
          ),
        ),
        back: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height*.8,
          width: MediaQuery.of(context).size.width * .23,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Course Outline',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Widget tree, State management, Animations & Themes.Dart Concepts, Lists, Maps, Enums, Loops, Futures, Streams, Mixings, Classes, Object-Oriented Programming (OOP), Model View Presenter(MVP) design pattern, API calls, Store and Retrieve data from the Cloud, Use of JSON for Server Communication. Firebase Cloud Fire Store to Act as a Backend for Flutter Apps.!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ],
          ),
        ),
      ),
    ),);
  }

  _universityDegree(context) {
    return Expanded(child: Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.VERTICAL,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height*.8,
          width: MediaQuery.of(context).size.width * .25,
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'April 2017',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Bachelor of Science in Engineering (B.S.E.)',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Atish Dipankar University of Science & Technology(ADUST)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ],
          ),
        ),
        back: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height*.8,
          width: MediaQuery.of(context).size.width * .23,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Thank You!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//        appBar: appBar(),
        body: Row(
          children: [
            NavigationRail(
              backgroundColor: Colors.orangeAccent,
              groupAlignment: 0.0,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  selectedIcon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.assignment),
                  selectedIcon: Icon(
                    Icons.assignment,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Blog',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.assignment_turned_in),
                  selectedIcon: Icon(
                    Icons.assignment_turned_in,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Resume',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.chat),
                  selectedIcon: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Chat',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/frontend/topBgImage.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        AvatarGlow(
                          endRadius: 120,
                          duration: Duration(seconds: 2),
                          glowColor: Colors.white,
                          repeat: true,
                          repeatPauseDuration: Duration(seconds: 2),
                          startDelay: Duration(seconds: 1),
                          child: Material(
                            elevation: 8.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                'assets/images/frontend/mamun.jpg',
                              ),
                              radius: 80.0,
                            ),
                          ),
                        ),
                        DelayedAnimation(
                          child: Text(
                            "Welcome to My World!",
                            style: GoogleFonts.galada(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: color)),
                          ),
                          delay: delayedAmount + 1000,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DelayedAnimation(
                          child: Text(
                            "IT'S NICE TO MEET YOU",
                            style: GoogleFonts.alfaSlabOne(
                                textStyle: TextStyle(
//                                fontWeight: FontWeight.bold,
                                    fontSize: 50.0,
                                    color: color)),
                          ),
                          delay: delayedAmount + 2000,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        DelayedAnimation(
                          child: GestureDetector(
                            onTapDown: _onTapDown,
                            onTapUp: _onTapUp,
                            child: Transform.scale(
                              scale: _scale,
                              child: _animatedButtonUI,
                            ),
                          ),
                          delay: delayedAmount + 3000,
                        ),
//                  DelayedAnimation(
//                    child: GestureDetector(
//                      onTapDown: _onTapDown,
//                      onTapUp: _onTapUp,
//                      child: Transform.scale(
//                        scale: _scale,
//                        child: SpinKitThreeBounce(
//                          color: Colors.white,
//                          size: 20.0,
//                        ),
//                      ),
//                    ),
//                    delay: delayedAmount + 4000,
//                  ),
                        SizedBox(
                          height: 100,
                        )
                      ],
                    ),
                    Container(
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Services',
                              style: GoogleFonts.bevan(
                                textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                            Text(
                              'Best Service, Right Time, Right People.',
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
//                        mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Expanded(
                                    child: Column(
                                  children: [
                                    AvatarGlow(
                                      endRadius: 120,
                                      duration: Duration(seconds: 2),
                                      glowColor: Colors.blue,
                                      repeat: true,
                                      repeatPauseDuration: Duration(seconds: 2),
                                      startDelay: Duration(seconds: 1),
                                      child: Material(
                                        elevation: 8.0,
                                        color: Colors.blue,
                                        shape: CircleBorder(),
                                        child: CircleAvatar(
                                            maxRadius: 80, minRadius: 30,
                                            backgroundColor: Colors.transparent,
                                            child: Icon(
                                              Icons.phone_iphone,
                                              size: 100,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mobile Application Development',
                                        style: GoogleFonts.oswald(
                                          textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                            fontSize: 25.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Android & IOS Development using Flutter, Firebase, Cloud Firestore, Sqflite & Hive.",
                                      ),
                                    ),
                                  ],
                                )),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      AvatarGlow(
                                        endRadius: 120,
                                        duration: Duration(seconds: 2),
                                        glowColor: Colors.blue,
                                        repeat: true,
                                        repeatPauseDuration:
                                            Duration(seconds: 2),
                                        startDelay: Duration(seconds: 1),
                                        child: Material(
                                          elevation: 8.0,
                                          color: Colors.blue,
                                          shape: CircleBorder(),
                                          child: CircleAvatar(
                                              maxRadius: 80, minRadius: 40,
                                              backgroundColor:
                                                  Colors.transparent,
                                              child: Icon(
                                                Icons.language,
                                                size: 100,
                                                color: Colors.white,
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Web Application Development',
                                          style: GoogleFonts.oswald(
                                            textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                              fontSize: 25.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Web Application Development using Laravel, MySQL, Express, Node.js & MongoDB.",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      AvatarGlow(
                                        endRadius: 120,
                                        duration: Duration(seconds: 2),
                                        glowColor: Colors.blue,
                                        repeat: true,
                                        repeatPauseDuration:
                                            Duration(seconds: 2),
                                        startDelay: Duration(seconds: 1),
                                        child: Material(
                                          elevation: 8.0,
                                          color: Colors.blue,
                                          shape: CircleBorder(),
                                          child: CircleAvatar(
                                            maxRadius: 80, minRadius: 30,
                                              backgroundColor:
                                                  Colors.transparent,
                                              child: Icon(
                                                Icons.bug_report,
                                                size: 100,
                                                color: Colors.white,
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Bug Fixing',
                                          style: GoogleFonts.oswald(
                                            textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                              fontSize: 25.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Need some quick bug fixes? Hire me today and have those annoying bugs fixed.",
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            end: Alignment.topRight,
                            begin: Alignment.bottomLeft,
                            colors: [
                              Colors.orange,
                              Colors.blue,
                            ]),
                      ),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Portfolio',
                              style: GoogleFonts.bevan(
                                textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              'Development is not something that can be achieved in the blink of an eye.',
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                          height: 600.0,
                                          width:
                                              MediaQuery.of(context).size.width *
                                                  .25,
                                          child: Carousel(
                                            images: [
                                              ExactAssetImage(
                                                  "assets/images/frontend/justhabbo/1.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/justhabbo/2.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/justhabbo/3.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/justhabbo/4.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/justhabbo/5.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/justhabbo/6.png"),
                                            ],
                                            dotSize: 4.0,
                                            dotSpacing: 15.0,
                                            dotColor: Colors.lightGreenAccent,
                                            indicatorBgPadding: 5.0,
                                            dotBgColor:
                                                Colors.purple.withOpacity(0.5),
                                            borderRadius: true,
                                          )),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'JustHabboFM',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Online FM Radio',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Android & IOS App Using Flutter',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                          height: 600.0,
                                          width:
                                              MediaQuery.of(context).size.width *
                                                  .25,
                                          child: Carousel(
                                            images: [
                                              ExactAssetImage(
                                                  "assets/images/frontend/earthcam/1.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/earthcam/2.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/earthcam/3.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/earthcam/4.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/earthcam/5.png"),
                                            ],
                                            dotSize: 4.0,
                                            dotSpacing: 15.0,
                                            dotColor: Colors.lightGreenAccent,
                                            indicatorBgPadding: 5.0,
                                            dotBgColor:
                                                Colors.purple.withOpacity(0.5),
                                            borderRadius: true,
                                          )),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'Earth Cam',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Live Video Streaming App',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Android App Using Flutter',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                          height: 600.0,
                                          width:
                                              MediaQuery.of(context).size.width *
                                                  .25,
                                          child: Carousel(
                                            images: [
                                              ExactAssetImage(
                                                  "assets/images/frontend/qjobs/1.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/qjobs/2.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/qjobs/3.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/qjobs/4.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/qjobs/5.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/qjobs/6.png"),
                                              ExactAssetImage(
                                                  "assets/images/frontend/qjobs/7.png"),
                                            ],
                                            dotSize: 4.0,
                                            dotSpacing: 15.0,
                                            dotColor: Colors.lightGreenAccent,
                                            indicatorBgPadding: 5.0,
                                            dotBgColor:
                                                Colors.purple.withOpacity(0.5),
                                            borderRadius: true,
                                          )),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'QJobs',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Job Portal UI',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Flutter Job Portal UI Kit',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.orange,
                              Colors.blue,
                            ]),
                      ),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'TRAINING & CERTIFICATIONS',
                              style: GoogleFonts.bevan(
                                textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                    color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                _laravelTraining(context),
                                _flutterTraining(context),
                                _universityDegree(context),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 300,
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Hire Me!',
                              style: GoogleFonts.bevan(
                                textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    launchURL(
                                        url: 'https://www.fiverr.com/users/mrhmamun99/'
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/icons/fiverr.jpeg',
                                    width:
                                        MediaQuery.of(context).size.width * .22,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    launchURL(
                                        url: 'https://www.upwork.com/freelancers/~017cc5af60b72187e5'
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/icons/upwork-logo.jpg',
                                    width:
                                        MediaQuery.of(context).size.width * .22,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    launchURL(
                                        url: 'https://www.freelancer.com/u/mrhmamun'
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/icons/freelancer.png',
                                    width:
                                        MediaQuery.of(context).size.width * .22,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    launchURL(
                                        url: 'https://codecanyon.net/user/codesolutions101/portfolio'
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/icons/envato.jpg',
                                    width:
                                        MediaQuery.of(context).size.width * .22,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
//                Container(color: Colors.deepPurple,height: 100,),
                    Container(
                      color: Colors.deepPurple,
                      child: Container(
                        height: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'copyright © mrhmamun.com 2020',
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
//              fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.mailBulk,
                                        color: Colors.white,
                                      ),
                                      onPressed: (){
                                       launchURL(
                                         url: 'mailto:mail@mrhmamun.com?subject=&body=%20'
                                       );
                                      }),

                                  IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.facebook,
                                        color: Colors.white,
                                      ),
                                      onPressed: (){
                                        launchURL(
                                            url: 'https://web.facebook.com/profile.php?id=100001052319915'
                                        );
                                      }),
                                  IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.google,
                                        color: Colors.white,
                                      ),
                                      onPressed: (){
                                        launchURL(
                                            url: 'https://web.facebook.com/profile.php?id=100001052319915'
                                        );
                                      }),
                                  IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.twitter,
                                        color: Colors.white,
                                      ),
                                      onPressed: (){
                                        launchURL(
                                            url: 'https://twitter.com/mrhmamun'
                                        );
                                      }),
                                  IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.linkedinIn,
                                        color: Colors.white,
                                      ),
                                      onPressed: (){
                                        launchURL(
                                            url: 'https://www.linkedin.com/in/mrhmamun/'
                                        );
                                      }),
                                  IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.github,
                                        color: Colors.white,
                                      ),
                                      onPressed: (){
                                        launchURL(
                                            url: 'https://github.com/mrhmamun'
                                        );
                                      })
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Privacy Policy',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      '|',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Terms of Use',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _animatedButtonUI => Container(
        height: 60,
        width: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.white,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SplashScreen()));
            },
            child: Text(
              'Tell Me More!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8185E2),
              ),
            ),
          ),
        ),
      );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}

class DelayedAnimation extends StatefulWidget {
  final Widget child;
  final int delay;

  DelayedAnimation({@required this.child, this.delay});

  @override
  _DelayedAnimationState createState() => _DelayedAnimationState();
}

class _DelayedAnimationState extends State<DelayedAnimation>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _controller);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _controller.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay), () {
        _controller.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
      opacity: _controller,
    );
  }
}


launchURL({String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
