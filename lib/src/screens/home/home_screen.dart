import 'package:flutter/material.dart';

import 'package:beautiful_design_home_page/src/screens/home/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [BackgroundStack(), BodyStack()],
      ),
      bottomNavigationBar: CustomBottonNavegationBar(),
    );
  }
}
