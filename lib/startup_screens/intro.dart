import 'package:flutter/material.dart';
import 'package:halal_stocks/Costome_widgets/common_widget.dart';

class IntroPage extends StatefulWidget {
  const IntroPage(
      {required this.onTabLoginCallBack, required this.onTabSignCallBack});
  final LoginTabCallBack onTabLoginCallBack;
  final SignTabCallBack onTabSignCallBack;

  createState() {
    return MyFirstTabStateKeeper(onTabLoginCallBack, onTabSignCallBack);
  }
}

class MyFirstTabStateKeeper extends State<IntroPage> {
  LoginTabCallBack? logInTabCall;
  SignTabCallBack? signUpTabCall;

  MyFirstTabStateKeeper(
      LoginTabCallBack onTabLoginCallBack, SignTabCallBack onTabSignCallBack) {
    this.logInTabCall = onTabLoginCallBack;
    this.signUpTabCall = onTabSignCallBack;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 50, 25, 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Assalamualikum\nWelcome to',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          Padding(
            padding:
                const EdgeInsets.fromLTRB(0, defaultPadding, 0, defaultPadding),
            child: Text(
              'Logo',
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 55),
            ),
          ),
          Text(
            'Invest Here & Hereafter',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(33, 5, 30, 15),
            width: double.infinity,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: buttonColor,
              boxShadow: [
                BoxShadow(
                    blurRadius: 7, color: Colors.black45, offset: Offset(0, 0)),
              ],
            ),
          ),
          Text(
            'Lets earn it Halal.. join us :)',
            textAlign: TextAlign.center,
            style: TextStyle(shadows: [defaultShadow]),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          // SizedBox(height: 50),
          Container(
              width: 170,
              height: 43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                boxShadow: [
                  BoxShadow(color: Color(0xffFBE1CA), blurRadius: 9.0)
                ],
              ),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffFBE1CA)),
                    // shadowColor:
                    //     MaterialStateProperty.all<Color>(Color(0xffFBE1CA)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius + 3),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.pushReplacementNamed(cntext, Routes.hOME);
                  },
                  child: Text(
                    'Intro Video',
                    style: TextStyle(
                        shadows: [defaultShadow],
                        color: Colors.black,
                        fontSize: 16),
                  ))),
          Spacer(),
          Text(
            'We are here to make your Islamic Investments easier...\nInshaAllah',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontWeight: FontWeight.normal),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
          SizedBox(
              width: double.infinity,
              child: neumorphicButton(
                onPressed: signUpTabCall,
                text: 'Sign Up',
                buttonColor: buttonColor,
                context: context,
              )),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
          SizedBox(
              width: double.infinity,
              child: neumorphicButton(
                onPressed: logInTabCall,
                text: 'Log In',
                textColor: buttonColor,
                buttonColor: Colors.white,
                context: context,
              )),
        ],
      ),
    );
  }
}

typedef LoginTabCallBack = void Function();
typedef SignTabCallBack = void Function();
