import 'package:flutter/material.dart';

import 'Screens/Home/home_tabbar.dart';
import 'constance/theme.dart';
import 'splash/spash_screen.dart';
import 'startup_screens/startup_tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Halal Stocks",
      theme: AppTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }

  var routes = <String, WidgetBuilder>{
    Routes.splash: (BuildContext context) => SplashScreen(),
    Routes.startUp: (BuildContext context) => StartUpTabBar(),
    Routes.homeTab: (BuildContext context) => HomeTabBar(),
    // Routes.cREATEPASSWORD: (BuildContext context) => CreatePassword(),
    // Routes.hOME: (BuildContext context) => CostomeBottomBar(),
    // Routes.lOGOUT: (BuildContext context) => LoginScreen(),
  };
}

class Routes {
  static String splash = "/";
  static String startUp = "/startup_screens/startup_tabbar";
  static String homeTab = "/startup_screens/home_tabbar.dart";
  // static String cREATEPASSWORD = "/Login/email_verification";
  // static String hOME = "/Home/costome_bottombar";
  // static String lOGOUT = "Home/login_screen";
}
