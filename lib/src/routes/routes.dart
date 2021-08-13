import 'package:flutter/material.dart';

import 'package:beautiful_design_home_page/src/screens/home/home_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
  };
}
