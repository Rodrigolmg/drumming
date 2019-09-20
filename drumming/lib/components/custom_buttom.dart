import 'package:flutter/material.dart';

class CustomButton extends MaterialButton{

  Key key;
  @required VoidCallback onPressed;
  ValueChanged<bool> onHighlightChanged;
  ButtonTextTheme textTheme;
  Color textColor;
  Color disabledTextColor;
  Color color;
  Color disabledColor;
  Color focusColor;
  Color hoverColor;
  Color highlightColor;
  Color splashColor;
  Brightness colorBrightness;
  EdgeInsetsGeometry padding;
  ShapeBorder shape;
  Clip clipBehavior;
  FocusNode focusNode;
  MaterialTapTargetSize materialTapTargetSize;
  @required Widget child;

  double elevation;
  double focusElevation;
  double hoverElevation;
  double highlightElevation;
  double disabledElevation;

    @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return OutlineButton(

      onPressed: (){}
    );
  }

}