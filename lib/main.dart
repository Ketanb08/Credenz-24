import 'package:credenz/menu_screen.dart';
import 'package:credenz/nontech.dart';
import 'package:credenz/tech.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;
  double value = 0;
  bool nav = true;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return value == 0
        ? Scaffold(
            body: PageView(
              controller: pageController,
              children: [
                Stack(
                  children: [
                    SafeArea(
                        child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF045AAB), Color(0xFF131321)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: screenHeight * 0.07),
                                Text(
                                  'Credenz',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.09,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * 0.18,
                          child: Container(
                            height: screenHeight * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.bookmark,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "PISB",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.inbox_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "PING",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Sponsors",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Container(
                                    width: screenWidth * 0.8,
                                    child: Divider(
                                      thickness: screenWidth * 0.01,
                                      color: Colors.white60,
                                    )),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Sessions",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.contact_support,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Contact Us",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.developer_mode,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Developers",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Container(
                                    width: screenWidth * 0.8,
                                    child: Divider(
                                      thickness: screenWidth * 0.01,
                                      color: Colors.white60,
                                    )),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.privacy_tip,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Privacy Policy",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.login,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                    TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: value),
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                        builder: (_, double val, __) {
                          double scaleFactor = 1;
                          if (1 - val > 0.65) {
                            scaleFactor = 1 - val;
                          } else {
                            scaleFactor = 0.65;
                          }
                          return (Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.001)
                              ..setEntry(0, 3, 150 * val)
                              ..setEntry(1, 3, 40 * val)
                              ..rotateY((pi / 10) * val),
                            child: Center(
                              child: Transform.scale(
                                scale: scaleFactor,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/background.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: screenHeight * 0.1),
                                            Text(
                                              'Credenz 24',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: screenWidth * 0.09,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: screenHeight * 0.15,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: screenHeight * 0.25,
                                                  width: screenWidth * 0.4,
                                                  child: CardWidget(
                                                    logo: AssetImage(
                                                        'assets/images/monitor.png'),
                                                    eventName: 'Tech\nEvents',
                                                    color1: Color.fromRGBO(
                                                        1, 93, 180, 0.5),
                                                    color2: Color.fromRGBO(
                                                        1, 37, 84, 1),
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              TechEventsPage(),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:
                                                        screenHeight * 0.02),
                                                Container(
                                                  height: screenHeight * 0.25,
                                                  width: screenWidth * 0.4,
                                                  child: CardWidget(
                                                    logo: AssetImage(
                                                        'assets/images/web.png'),
                                                    eventName:
                                                        'Non Tech\nEvents',
                                                    color1: Color.fromRGBO(
                                                        1, 93, 180, 0.2),
                                                    color2: Color.fromRGBO(
                                                        1, 10, 23, 1),
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              NonTechEventsPage(),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: MediaQuery.of(context).size.height *
                                          0.055,
                                      left: MediaQuery.of(context).size.height *
                                          0.015,
                                      child: Builder(
                                          builder: (BuildContext context) {
                                        return IconButton(
                                          icon: ImageIcon(
                                            AssetImage('assets/icons/menu.png'),
                                            color: Colors.white,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.032,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              value == 0
                                                  ? value = 1
                                                  : value = 0;
                                            });
                                          },
                                        );
                                      }),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                        }),
                  ],
                ),
              ],
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.black, // Set the background color to transparent
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: WaterDropNavBar(
                  backgroundColor: Color.fromRGBO(0, 7, 29, 1.0),
                  waterDropColor: Color(0xFF024083),
                  bottomPadding: 15.0,
                  iconSize: 30,
                  onItemSelected: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                    pageController.animateToPage(selectedIndex,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeOutQuad);
                  },
                  selectedIndex: selectedIndex,
                  barItems: [
                    BarItem(
                      filledIcon: Icons.calendar_today,
                      outlinedIcon: Icons.calendar_today_outlined,
                    ),
                    BarItem(
                        filledIcon: Icons.account_box,
                        outlinedIcon: Icons.account_box_outlined),
                    BarItem(
                        filledIcon: Icons.home_rounded,
                        outlinedIcon: Icons.home_outlined),
                    BarItem(
                        filledIcon: Icons.info,
                        outlinedIcon: Icons.info_outline_rounded),
                    BarItem(
                        filledIcon: Icons.account_box,
                        outlinedIcon: Icons.account_box_outlined),
                  ],
                ),
              ),
            ))
        : Scaffold(
            body: PageView(
              controller: pageController,
              children: [
                Stack(
                  children: [
                    SafeArea(
                        child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF045AAB), Color(0xFF131321)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: screenHeight * 0.07),
                                Text(
                                  'Credenz',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.09,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * 0.18,
                          child: Container(
                            height: screenHeight * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.bookmark,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "PISB",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.inbox_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "PING",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Sponsors",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Container(
                                    width: screenWidth * 0.8,
                                    child: Divider(
                                      thickness: screenWidth * 0.01,
                                      color: Colors.white60,
                                    )),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Sessions",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.contact_support,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Contact Us",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.developer_mode,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Developers",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Container(
                                    width: screenWidth * 0.8,
                                    child: Divider(
                                      thickness: screenWidth * 0.01,
                                      color: Colors.white60,
                                    )),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.privacy_tip,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Privacy Policy",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Icon(
                                      Icons.login,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.07,
                                    ),
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: screenHeight * 0.019,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                    TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: value),
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                        builder: (_, double val, __) {
                          double scaleFactor = 1;
                          if (1 - val > 0.65) {
                            scaleFactor = 1 - val;
                          } else {
                            scaleFactor = 0.65;
                          }
                          return (Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.001)
                              ..setEntry(0, 3, 150 * val)
                              ..setEntry(1, 3, 20 * val)
                              ..rotateY((pi / 9) * val),
                            child: Center(
                              child: Transform.scale(
                                scale: scaleFactor,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/background.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: screenHeight * 0.1),
                                            Text(
                                              'Credenz 24',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: screenWidth * 0.09,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: screenHeight * 0.15,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: screenHeight * 0.25,
                                                  width: screenWidth * 0.4,
                                                  child: CardWidget(
                                                    logo: AssetImage(
                                                        'assets/images/monitor.png'),
                                                    eventName: 'Tech\nEvents',
                                                    color1: Color.fromRGBO(
                                                        1, 93, 180, 0.5),
                                                    color2: Color.fromRGBO(
                                                        1, 37, 84, 1),
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              TechEventsPage(),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:
                                                        screenHeight * 0.02),
                                                Container(
                                                  height: screenHeight * 0.25,
                                                  width: screenWidth * 0.4,
                                                  child: CardWidget(
                                                    logo: AssetImage(
                                                        'assets/images/web.png'),
                                                    eventName:
                                                        'Non Tech\nEvents',
                                                    color1: Color.fromRGBO(
                                                        1, 93, 180, 0.2),
                                                    color2: Color.fromRGBO(
                                                        1, 10, 23, 1),
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              NonTechEventsPage(),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: MediaQuery.of(context).size.height *
                                          0.055,
                                      left: MediaQuery.of(context).size.height *
                                          0.015,
                                      child: Builder(
                                          builder: (BuildContext context) {
                                        return IconButton(
                                          icon: ImageIcon(
                                            AssetImage('assets/icons/menu.png'),
                                            color: Colors.white,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.032,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              value == 0
                                                  ? value = 1
                                                  : value = 0;
                                            });
                                          },
                                        );
                                      }),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                        }),
                  ],
                ),
              ],
            ),
          );
  }
}

class CardWidget extends StatelessWidget {
  final AssetImage logo;
  final String eventName;
  final VoidCallback onTap;
  final Color color1;
  final Color color2;

  const CardWidget({
    required this.logo,
    required this.eventName,
    required this.onTap,
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(16), // Adjust the radius as needed
        ),
        elevation: 0, // Remove card elevation
        child: Container(
          padding: EdgeInsets.all(5),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(16), // Match the card's border radius
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: logo, height: 90, width: 100),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  eventName,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
