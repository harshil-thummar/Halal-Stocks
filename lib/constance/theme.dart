// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halal_stocks/constance/constance.dart' as constance;
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static bool isLightTheme = false;

  static ThemeData getTheme() {
    if (isLightTheme) {
      return lightTheme();
    } else {
      return darkTheme();
    }
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      subtitle1: GoogleFonts.poppins(
          textStyle: TextStyle(color: base.subtitle1!.color, fontSize: 15)),
      subtitle2: GoogleFonts.poppins(
          textStyle: TextStyle(
              color: base.caption!.color,
              fontSize: 16,
              fontWeight: FontWeight.w500)),
      bodyText1: GoogleFonts.poppins(
          textStyle: TextStyle(color: base.bodyText1!.color, fontSize: 14)),
      bodyText2: GoogleFonts.poppins(
          textStyle: TextStyle(color: base.bodyText2!.color, fontSize: 16)),
      caption: GoogleFonts.poppins(
          textStyle: TextStyle(color: base.caption!.color, fontSize: 12)),
      headline1: GoogleFonts.poppins(
          textStyle: TextStyle(
        color: base.subtitle1!.color,
        fontSize: 16,
        letterSpacing: 0.7,

        fontWeight: FontWeight.w600,
        //Only this Projet
        shadows: <Shadow>[
          Shadow(
            offset: Offset(0.0, 3.0),
            blurRadius: 6.0,
            color: Color.fromARGB(130, 0, 0, 0),
          ),
        ],
      )),
      headline4: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: base.subtitle1!.color,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
          //Only this Projet
          shadows: <Shadow>[
            Shadow(
              offset: Offset(0.0, 3.0),
              blurRadius: 6.0,
              color: Color.fromARGB(130, 0, 0, 0),
            ),
          ],
        ),
      ),
      headline3: GoogleFonts.poppins(
          textStyle: TextStyle(color: base.headline3!.color, fontSize: 48)),
      headline2: GoogleFonts.poppins(
          textStyle: TextStyle(
        color: base.subtitle1!.color, fontSize: 21, //Only this Projet
        shadows: <Shadow>[
          Shadow(
            offset: Offset(0.0, 3.0),
            blurRadius: 6.0,
            color: Color.fromARGB(130, 0, 0, 0),
          ),
        ],
      )),
      headline5: GoogleFonts.poppins(
          textStyle: TextStyle(color: base.headline5!.color, fontSize: 24)),
      headline6: GoogleFonts.poppins(
        //AppBar Title Font
          textStyle: TextStyle(
              color: base.headline6!.color,
              fontSize: 21,
              fontWeight: FontWeight.w500)),
      button: GoogleFonts.poppins(
          textStyle: TextStyle(
              color: base.button!.color,
              fontSize: 14,
              fontWeight: FontWeight.w500)),
      overline: GoogleFonts.poppins(
          textStyle: TextStyle(color: base.overline!.color, fontSize: 10)),
    );
  }

  static ThemeData lightTheme() {
    Color primaryColor = HexColor(constance.primaryColorString);
    Color secondaryColor = HexColor(constance.secondaryColorString);
    final ColorScheme colorScheme = ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );

    final ThemeData base = ThemeData.light();
    return base.copyWith(
        appBarTheme: AppBarTheme(color: Colors.white),
        popupMenuTheme: PopupMenuThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Color(0xff2b2b2b)),
        colorScheme: colorScheme,
        primaryColor: primaryColor,
        buttonColor: primaryColor,
        splashColor: Colors.white.withOpacity(0.1),
        hoverColor: Colors.transparent,
        splashFactory: InkRipple.splashFactory,
        highlightColor: Colors.transparent,
        accentColor: primaryColor,
        canvasColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        errorColor: Colors.red,
        cursorColor: primaryColor,
        textTheme: _buildTextTheme(base.textTheme),
        primaryTextTheme: _buildTextTheme(base.textTheme),
        platform: TargetPlatform.iOS,
        indicatorColor: primaryColor,
        shadowColor: Colors.black,
        disabledColor: HexColor("#D5D7D8"));
  }

  static ThemeData darkTheme() {
    Color primaryColor = HexColor(constance.primaryColorString);
    Color secondaryColor = HexColor(constance.secondaryColorString);
    final ColorScheme colorScheme = ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      appBarTheme: AppBarTheme(color: Colors.grey[850]),
      popupMenuTheme: PopupMenuThemeData(color: Colors.black),
      colorScheme: colorScheme,
      iconTheme: IconThemeData(color: Colors.white),
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.grey[900],
      backgroundColor: Colors.grey[850],
      scaffoldBackgroundColor: Color(0xff2C2F33),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      cursorColor: primaryColor,
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
      shadowColor: Colors.black87,
      platform: TargetPlatform.iOS,
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
