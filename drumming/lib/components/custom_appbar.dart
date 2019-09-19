import 'package:drumming/pages/home.dart';
import 'package:drumming/utils/cores.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  String title;
  String subtitle;
  String route;

  int iconListSize;

  double titlePaddingTop;
  double titlePaddingLeft;
  double titlePaddingRight;
  double titlePaddingBottom;
  double titleFontSize;
  double appBarSize;
  double elevation;

  bool centerTitle;
  bool isLeading;
  bool isHome;

  List<Icon> icons;
  List<double> iconsPadding;
  List<Function> callbacks;


  CustomAppBar({
    this.appBarSize = 54.0,
    this.title,
    this.titlePaddingTop,
    this.titlePaddingBottom,
    this.titlePaddingLeft,
    this.titlePaddingRight,
    this.titleFontSize,
    this.route,
    this.centerTitle = false,
    this.elevation,
    this.isLeading = false,
    this.isHome = true,
    this.subtitle,
    this.icons,
    this.callbacks,
    this.iconListSize,
    this.iconsPadding = const []
  });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PreferredSize(
        child: AppBar(
          centerTitle: centerTitle,
          leading: _getLeading(context: context),
          backgroundColor: Cores.bege,
          title: _titleType(title ?? ""),
          actions: _getIconsButton(),
        ),
        preferredSize: Size.fromHeight(appBarSize)
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBarSize);


  Widget _titleType(String title){
    return title.isNotEmpty
      ? Padding(
          padding: centerTitle ? EdgeInsets.only(
            top: titlePaddingTop ?? 0.0,
            right: titlePaddingRight ?? 0.0,
            bottom: titlePaddingBottom ?? 0.0,
            left: titlePaddingLeft ?? 0.0
          ) : EdgeInsets.zero,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: titleFontSize,
                fontFamily: 'Nightshade'
            ),
          ),
        )
      : Container();
  }

  Widget _getLeading({BuildContext context}){
    return isLeading ? Padding(
      padding: EdgeInsets.only(top: 19.0),
      child: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    ) : Container();
  }

  List<Widget> _getIconsButton(){
    
    if(isHome) return [];
    
    List<Widget> iconButtons = [];
    
    for(var i = 0; i < iconListSize; i++){
      iconButtons.add(
        Padding(
          padding: EdgeInsets.only(
            top: iconsPadding.isNotEmpty ? iconsPadding[0] : 0.0,
            right: iconsPadding.isNotEmpty ? iconsPadding[1] : 0.0,
            bottom: iconsPadding.isNotEmpty ? iconsPadding[2] : 0.0,
            left: iconsPadding.isNotEmpty ? iconsPadding[3] : 0.0
          ),
          child: IconButton(
              icon: icons[i],
              onPressed: callbacks[i]
          ),
        )
      );
    }
    
    return iconButtons;
  }

}