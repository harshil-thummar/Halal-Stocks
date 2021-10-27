import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

const buttonColor = Color(0xff1D5BA9);
const greenColor = Color(0xff2DB091);
const redColor = Color(0xffFF5252);
const defaultRadius = 8.0;
const defaultPadding = 20.0;

const defaultShadow = Shadow(
  offset: Offset(0.0, 2.0),
  blurRadius: 9.0,
  color: Color.fromARGB(130, 0, 0, 0),
);

Widget textFormField({
  required BuildContext context,
  required String hintText,
  TextEditingController? controller,
  VoidCallback? onTap,
  // void Function()? onTap,
  dynamic $Widget,
}) {
  return Neumorphic(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      padding: EdgeInsets.fromLTRB(15, 4, 15, 4),
      style: NeumorphicStyle(
        depth: -3,
        shape: NeumorphicShape.flat,
        shadowDarkColorEmboss: Colors.black87,
        shadowLightColor: Color(0xff454C55),
        color: Theme.of(context).scaffoldBackgroundColor,
        lightSource: LightSource.topLeft,
        boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.circular(defaultRadius)),
      ),
      child: TextFormField(
        cursorColor: Colors.grey,
        onTap: onTap,
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText, border: InputBorder.none, suffixIcon: $Widget),
      ));
}

Widget neumorphicButton({
  required BuildContext context,
  required String text,
  Color? buttonColor,
  Color? textColor,
  VoidCallback? onPressed,
}) {
  return NeumorphicButton(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
    padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
    onPressed: onPressed,
    style: NeumorphicStyle(
      depth: 10,
      shape: NeumorphicShape.flat,
      shadowLightColor: buttonColor!.withOpacity(0.5),
      shadowDarkColor: Theme.of(context).shadowColor,
      color: buttonColor,
      lightSource: LightSource.topLeft,
      boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(defaultRadius)),
    ),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style:
          TextStyle(shadows: [defaultShadow], color: textColor, fontSize: 16),
    ),
  );
}

Widget neumCircleButton({
  required BuildContext context,
  Color? color,
  double? imageHeight,
  dynamic assetImage,
  VoidCallback? onPressed,
}) {
  return NeumorphicButton(
    onPressed: onPressed,
    padding: EdgeInsets.all(6),
    style: NeumorphicStyle(
      depth: 8,
      shape: NeumorphicShape.flat,
      shadowLightColor: color!.withOpacity(0.6),
      shadowDarkColor: Theme.of(context).shadowColor,
      color: color,
      lightSource: LightSource.topLeft,
      boxShape: NeumorphicBoxShape.circle(),
    ),
    child: Image.asset(
      assetImage,
      height: 25,
      fit: BoxFit.cover,
    ),
  );
}

Widget neumorphicContainer({required BuildContext context, dynamic child}) {
  return Neumorphic(
    style: NeumorphicStyle(
      color: Theme.of(context).scaffoldBackgroundColor,
      depth: 4.5,
      shape: NeumorphicShape.flat,
      shadowLightColor: Color(0xff566272),
      shadowDarkColor: Theme.of(context).shadowColor.withOpacity(0.8),
      lightSource: LightSource.topLeft,
      boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(defaultRadius)),
    ),
    child: child,
  );
}
