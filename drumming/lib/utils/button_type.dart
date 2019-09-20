import 'package:flutter/material.dart';

enum ButtonTypes {
  FLATBUTTON, //MaterialButton's child
  ICONBUTTON,
  RAISEDBUTTON,//MaterialButton's child
  FLOATINGBUTTON,
  MATERIALBUTTON,
  OUTLINEBUTTON,//MaterialButton's child
}

abstract class ButtonType {

  Widget getFlatButton(){
    return DropdownButton(items: null, onChanged: null);
  }
}

//RaisedButton
/**
 * double elevation,
    double focusElevation,
    double hoverElevation,
    double highlightElevation,
    double disabledElevation,
    Duration animationDuration
 *
 *
**/


//OutlineButton
/**
 * this.borderSide,
    this.disabledBorderColor,
    this.highlightedBorderColor,
 *
 *
 **/