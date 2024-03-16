import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    "Non-Tech Events",
                    style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.4 - (MediaQuery.of(context).size.width * 0.4) + ((MediaQuery.of(context).size.width * 0.04)) ,
                left: MediaQuery.of(context).size.width * 0.1 + (MediaQuery.of(context).size.width * 0.4) - ((MediaQuery.of(context).size.width * 0.04)),
                child: EventCard(
                  color1 :Color.fromRGBO(1, 93, 180, 0.7),
                  color2: Color.fromRGBO(1, 37, 84, 0.7),
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.4,
                left: MediaQuery.of(context).size.width * 0.1,
                child: EventCard(
                  color1 :Color.fromRGBO(4, 90, 171, 0.7),
                  color2: Color.fromRGBO(1, 37, 84, 0.7),
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ),

              Positioned(
                top: MediaQuery.of(context).size.height * 0.4 + (MediaQuery.of(context).size.width * 0.4) - ((MediaQuery.of(context).size.width * 0.04)),
                left: MediaQuery.of(context).size.width * 0.1 + (MediaQuery.of(context).size.width * 0.4) - ((MediaQuery.of(context).size.width * 0.04)),
                child: EventCard(
                color1: Color.fromRGBO(2,65, 125, 0.7),
                color2 :Color.fromRGBO(2, 28, 61, 0.7),
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final double width;
  final Color color1;
  final Color color2;


  const EventCard({required this.width,required this.color1,required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [
            color1,color2
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}