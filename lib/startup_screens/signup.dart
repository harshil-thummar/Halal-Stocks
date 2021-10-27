import 'package:flutter/material.dart';
import 'package:halal_stocks/Costome_widgets/common_widget.dart';
import 'package:halal_stocks/constance/constance.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    required this.onTabLoginCallBack,
  });
  final LoginTabCallBack onTabLoginCallBack;

  createState() {
    return MyFirstTabStateKeeper(onTabLoginCallBack);
  }
}

typedef LoginTabCallBack = void Function();

class MyFirstTabStateKeeper extends State<SignUpPage> {
  LoginTabCallBack? logInTabCall;

  MyFirstTabStateKeeper(
    LoginTabCallBack onTabLoginCallBack,
  ) {
    this.logInTabCall = onTabLoginCallBack;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(25),
      children: [
        Text(
          'Sign Up'.toUpperCase(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 10),
        textFormField(context: context, hintText: 'Email'),
        textFormField(context: context, hintText: 'Name'),
        textFormField(context: context, hintText: 'Username'),
        textFormField(context: context, hintText: 'Password'),
        textFormField(context: context, hintText: 'Age'),
        textFormField(context: context, hintText: 'Country'),
        textFormField(context: context, hintText: 'Mobile'),
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
              style: Theme.of(context).textTheme.subtitle2,
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
        SizedBox(height: 25),
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
        SizedBox(height: MediaQuery.of(context).size.height / 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already with us? ',
              style: TextStyle(shadows: [defaultShadow]),
            ),
            GestureDetector(
              onTap: logInTabCall,
              child: Text(
                'Log in',
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
