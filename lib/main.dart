import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:mrhmamun/frontend/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: missing_return
  AppBar appBar() {
    return AppBar(
      title: Text(' Welcome to My World!'),
//      centerTitle: true,
      actions: <Widget>[
        Center(
          child: Container(
            child: GestureDetector(
              onTap: null,
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
                'Services',
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
                'Portfolio',
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
            child: GestureDetector(
              onTap: null,
              child: Text(
                'Hire Me!',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: appBar(),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
//                  height: MediaQuery.of(context).size.height*.4,
//                  width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/frontend/topBgImage.jpg'),
              ),
              Positioned(
                  child: Align(
                alignment: Alignment.center,
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    AvatarGlow(
                      startDelay: Duration(milliseconds: 1000),
                      glowColor: Colors.blue,
                      endRadius: 150.0,
                      duration: Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                              'assets/images/frontend/user.jpg',
                            ),
                            radius: 90.0,
                          ),
                        ),
                      ),
                      shape: BoxShape.circle,
                      animate: true,
                      curve: Curves.fastOutSlowIn,
                    ),
                    Text(
                      'Welcome to My World!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'IT\'S NICE TO MEET YOU',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tell Me More',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
