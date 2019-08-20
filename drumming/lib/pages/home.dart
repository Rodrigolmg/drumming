import 'package:drumming/pages/students.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(208, 165, 74, 10.0),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Material(
                      color: Color.fromRGBO(208, 165, 74, 10.0),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            splashColor: Colors.black12,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/students_cap.png",
                                  height: 95.0,
                                  width: 130.0,
                                ),
                                Text(
                                  "Students",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontFamily: 'Nightshade'
                                  ),
                                )
                              ],
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Students()));
                            },
                          ),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.elliptical(10.0, 10.0)),

                    ),
                  ),
                  Material(
                    color: Color.fromRGBO(208, 165, 74, 10.0),
                    child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: InkWell(
                          splashColor: Colors.black12,
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/schedule.png",
                                height: 85.0,
                                width: 130.0,
                              ),
                              Text(
                                "Schedule",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontFamily: 'Nightshade'
                                ),
                              )
                            ],
                          ),
                          onTap: (){},
                        )
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(10.0, 10.0)),

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}