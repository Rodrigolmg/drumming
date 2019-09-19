import 'package:drumming/utils/cores.dart';
import 'package:flutter/material.dart';

class MenuOption extends StatelessWidget{

  Widget image;
  Widget page;

  String title;
  String route;

  double titlePaddingTop;
  double titlePaddingRight;
  double titlePaddingBottom;
  double titlePaddingLeft;

  double inkPaddingTop;
  double inkPaddingRight;
  double inkPaddingBottom;
  double inkPaddingLeft;

  MenuOption({
    this.image,
    this.title,
    this.route,
    this.page,
    this.titlePaddingTop,
    this.titlePaddingRight,
    this.titlePaddingBottom,
    this.titlePaddingLeft,
    this.inkPaddingTop,
    this.inkPaddingRight,
    this.inkPaddingBottom,
    this.inkPaddingLeft
  });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Cores.bege,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: inkPaddingTop ?? 0.0,
              right: inkPaddingRight ?? 0.0,
              bottom: inkPaddingBottom ?? 0.0,
              left: inkPaddingLeft ?? 0.0,
            ),
            child: InkWell(
              splashColor: Colors.black12,
              child: Column(
                children: <Widget>[
                  image ?? Container(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: titlePaddingTop ?? 0.0,
                      right: titlePaddingRight ?? 0.0,
                      bottom: titlePaddingBottom ?? 0.0,
                      left: titlePaddingLeft ?? 0.0,
                    ),
                    child: Text(
                      title ?? "",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontFamily: 'Nightshade'
                      ),
                    ),
                  )
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => page));
              },
            ),
          ),
        ],
      ),
      borderRadius: BorderRadius.all(Radius.elliptical(10.0, 10.0)),

    );
  }

}