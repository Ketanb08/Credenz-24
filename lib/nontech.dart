import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class NonTechEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/background.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(7, 14, 71, 1),
                        Color.fromRGBO(11, 22, 59, 1)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  // color: Colors.black,
                  width: MediaQuery.of(context).size.height * 1,
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: Center(
                    child: Text(
                      "Non-Tech Events",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  // color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: PageView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return revCombinedEventCard();
                      } else {
                        return CombinedEventCard();
                      }
                    },
                  ),
                )
              ],
              // top: MediaQuery.of(context).size.height * 0.1,
              // left: 0,
              // right: 0,
              // child: Center(
              //   child:
              // ),
            ),
          ),
          // Positioned(
          //   child: ListView.builder(
          //     itemCount: 2,
          //     itemBuilder: (context, index) {
          //       return CombinedEventCard();
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}

class CombinedEventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/page2.gif"),
        fit: BoxFit.cover,
      )),
      // color: Colors.black,
      height: 800,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.2,
        left: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.01,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.4,
              right: MediaQuery.of(context).size.width * 0.1,
            ),
            child: EventCard(
              color1: Color.fromRGBO(1, 93, 180, 0.7),
              color2: Color.fromRGBO(1, 37, 84, 0.7),
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.45,
            ),
            child: EventCard(
              color1: Color.fromRGBO(4, 90, 171, 0.7),
              color2: Color.fromRGBO(1, 37, 84, 0.7),
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.4,
              right: MediaQuery.of(context).size.width * 0.1,
            ),
            child: EventCard(
              color1: Color.fromRGBO(2, 65, 125, 0.7),
              color2: Color.fromRGBO(2, 28, 61, 0.7),
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final double width;
  final Color color1;
  final Color color2;

  const EventCard({
    required this.width,
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}

class revCombinedEventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/page3.gif"),
        fit: BoxFit.cover,
      )),
      // color: Colors.black,
      height: 800,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.2,
        left: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.01,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.45,
            ),
            child: EventCard(
              color1: Color.fromRGBO(1, 93, 180, 0.7),
              color2: Color.fromRGBO(1, 37, 84, 0.7),
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.4,
              right: MediaQuery.of(context).size.width * 0.1,
            ),
            child: EventCard(
              color1: Color.fromRGBO(4, 90, 171, 0.7),
              color2: Color.fromRGBO(1, 37, 84, 0.7),
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.45,
            ),
            child: EventCard(
              color1: Color.fromRGBO(2, 65, 125, 0.7),
              color2: Color.fromRGBO(2, 28, 61, 0.7),
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
