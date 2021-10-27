import 'package:flutter/material.dart';
// import 'package:halal_stocks/constance/constance.dart' as constance;
// import 'package:halal_stocks/constance/constance.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  @override
  void initState() {
    myContext = context;
    _loadNextScreen();
    super.initState();
  }

  late BuildContext myContext;

  _loadNextScreen() async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (!mounted) return;
    checkUserStatus();
  }

  checkUserStatus() {
    Navigator.pushReplacementNamed(context, Routes.startUp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //   child: Image.asset(
          //     ConstanceData.blossomLogo,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
