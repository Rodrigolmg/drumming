import 'package:drumming/components/custom_buttom.dart';
import 'package:flutter/material.dart';

import 'button_types.dart';

class ButtonBuilder{

  CustomButton customButton;

  ButtonBuilder(this.customButton);


  Widget getButton(){
    switch(customButton.buttonType){
      case ButtonTypes.FLATBUTTON:
        return CallFlatButton(customButton).getFlatButton();
      case ButtonTypes.ICONBUTTON:
      case ButtonTypes.RAISEDBUTTON:
      case ButtonTypes.FLOATINGBUTTON:
      case ButtonTypes.MATERIALBUTTON:
      case ButtonTypes.OUTLINEBUTTON:
    }
  }
}

class CallFlatButton {

  CustomButton customButton;

  CallFlatButton(this.customButton);

  Widget getFlatButton(){
    return FlatButton(
      onPressed: customButton.onPressed,
      child: customButton.child,
    );
  }

}