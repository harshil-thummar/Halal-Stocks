import 'package:flutter/material.dart';
import 'package:halal_stocks/Costome_widgets/common_widget.dart';
import 'package:halal_stocks/Costome_widgets/timer_page.dart';
import 'package:halal_stocks/constance/constance.dart';

import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({required this.onTabSignCallBack});
  final SignTabCallBack onTabSignCallBack;

  createState() {
    return MyFirstTabStateKeeper(onTabSignCallBack);
  }
}

typedef SignTabCallBack = void Function();

class MyFirstTabStateKeeper extends State<LoginPage> {
  SignTabCallBack? signUpTabCall;

  MyFirstTabStateKeeper(SignTabCallBack onTabSignCallBack) {
    this.signUpTabCall = onTabSignCallBack;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(25),
      children: [
        Text(
          'LOGIN'.toUpperCase(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 10),
        textFormField(context: context, hintText: 'Email / Username'),
        textFormField(context: context, hintText: 'Password'),
        textFormField(
            context: context, hintText: 'Enter Otp', $Widget: TimerPage()),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Forgot password?',
              textAlign: TextAlign.center,
              style: TextStyle(shadows: [defaultShadow]),
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 45, 0, defaultPadding),
            child: neumorphicButton(
                context: context,
                text: 'Continue',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.homeTab);
                },
                buttonColor: buttonColor)),
        Row(
          children: [
            Expanded(
              child: Divider(
                color: Theme.of(context).iconTheme.color,
                endIndent: 18,
                thickness: 0.7,
              ),
            ),
            Text(
              'or using',
              textAlign: TextAlign.center,
              style: TextStyle(shadows: [defaultShadow]),
            ),
            Expanded(
              child: Divider(
                color: Theme.of(context).iconTheme.color,
                indent: 18,
                thickness: 0.7,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            neumCircleButton(
              context: context,
              onPressed: () {},
              color: Color(0xff3C5A9A),
              assetImage: ConstanceData.facebookIcon,
            ),
            SizedBox(width: 35),
            neumCircleButton(
              context: context,
              onPressed: () {},
              color: Colors.white,
              assetImage: ConstanceData.googleIcon,
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            neumCircleButton(
              context: context,
              onPressed: () {},
              color: Colors.white,
              assetImage: ConstanceData.faceDetectionIcon,
            ),
            SizedBox(width: 35),
            neumCircleButton(
              context: context,
              onPressed: () {},
              color: Colors.white,
              assetImage: ConstanceData.fingerprintIcon,
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 3.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t have an account?  ',
              style: TextStyle(shadows: [defaultShadow]),
            ),
            GestureDetector(
              onTap: signUpTabCall,
              child: Text(
                'Create one',
                style: TextStyle(
                    shadows: [defaultShadow], color: Color(0xffFAD303)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
