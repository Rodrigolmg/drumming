import 'package:drumming/pages/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState(){
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    Future.delayed(
        Duration(seconds: 20),
        (){
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Home())
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    Future.delayed(
      Duration(milliseconds: 6550),
        (){
          _animationController.forward();
        }
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splash_gif.gif"),
                fit: BoxFit.fitHeight
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: Image.asset("assets/drumsticks.png"),
                ),
              ),
              Center(
                child: FadeTransition(opacity: _animation,
                  child: Text(
                    "Drumming",
                    style: TextStyle(
                        color: Color.fromRGBO(208, 165, 74, 10.0),
                        fontSize: 80.0,
                        fontFamily: 'Nightshade'
                    ),
                  ),
                )
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }


}




