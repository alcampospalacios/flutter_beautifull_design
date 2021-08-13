import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundStack extends StatelessWidget {
  final _boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xff2e305f), Color(0xff202333)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8]));

  final _pinkBox = Transform.rotate(
    angle: -pi / 5,
    child: Container(
      width: 360,
      height: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1),
            Color.fromRGBO(241, 142, 172, 1),
          ])),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // purple gradient
      Container(
        decoration: _boxDecoration,
      ),
      Positioned(top: -130, left: -30, child: _pinkBox)
    ]);
  }
}

class BodyStack extends StatelessWidget {
  final _title = SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Classify transaction in a particular category',
                style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[_title, _CardTable()],
      ),
    );
  }
}

class CustomBottonNavegationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline), label: 'Graphics'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_sharp), label: 'Users')
        ]);
  }
}

class _CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _singleCard(Icons.border_all, Colors.blue.shade600, 'General'),
          _singleCard(Icons.car_rental, Colors.pinkAccent, 'Transporte'),
        ]),
        TableRow(children: [
          _singleCard(
              Icons.graphic_eq_outlined, Colors.greenAccent, 'Graficas'),
          _singleCard(Icons.restore_outlined, Colors.purple, 'Restauracion'),
        ]),
        TableRow(children: [
          _singleCard(Icons.add, Colors.indigoAccent, 'Adiciona'),
          _singleCard(Icons.delete, Colors.red, 'ELiminar'),
        ]),
      ],
    );
  }

  Widget _singleCard(IconData icon, Color color, String text) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 160,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
