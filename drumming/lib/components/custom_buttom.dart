import 'package:drumming/utils/button_types.dart';
import 'package:flutter/material.dart';

class CustomButton{

  //To show
  ButtonTypes buttonType;

  //From all classes
  Key key;
  Color color;
  Color focusColor;
  Color hoverColor;
  Color highlightColor;
  VoidCallback onPressed;
  Color splashColor;
  Color disabledColor;
  FocusNode focusNode;
  EdgeInsetsGeometry padding;
  Widget child;
  ShapeBorder shape;
  Clip clipBehavior;
  MaterialTapTargetSize materialTapTargetSize;

  //IconButton and FloatingActionButton
  String tooltip;

  //FloatingActionButton and RaisedButton
  double elevation;
  double focusElevation;
  double hoverElevation;
  double disabledElevation;

  //From all classes that inherited MaterialButton
  ValueChanged<bool> onHighlightChanged;
  ButtonTextTheme textTheme;
  Color textColor;
  Color disabledTextColor;
  Brightness colorBrightness;

  //FloatingActionButton
  Color foregroundColor;
  Color backgroundColor;
  Object heroTag;
  bool mini;
  bool isExtended;

  //IconButton
  double iconSize;
  AlignmentGeometry alignment;
  Widget icon;

  //RaisedButton
  Duration animationDuration;

  //OutlineButton
  BorderSide borderSide;
  Color disabledBorderColor;
  Color highlightedBorderColor;

  //Raised, Outline and FloatingActionButton Buttons
  double highlightElevation;

  CustomButton({
    this.buttonType,
    this.key,
    this.color,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.onPressed,
    this.splashColor,
    this.disabledColor,
    this.focusNode,
    this.padding,
    this.child,
    this.shape,
    this.clipBehavior,
    this.materialTapTargetSize,
    this.tooltip,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.disabledElevation,
    this.onHighlightChanged,
    this.textTheme,
    this.textColor,
    this.disabledTextColor,
    this.colorBrightness,
    this.foregroundColor,
    this.backgroundColor,
    this.heroTag,
    this.mini,
    this.isExtended,
    this.iconSize = 24.0,
    this.alignment = Alignment.center,
    this.icon,
    this.animationDuration,
    this.borderSide,
    this.disabledBorderColor,
    this.highlightedBorderColor
  });


}