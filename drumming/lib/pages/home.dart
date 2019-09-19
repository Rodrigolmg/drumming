import 'package:drumming/components/custom_appbar.dart';
import 'package:drumming/components/menu_option.dart';
import 'package:drumming/pages/students.dart';
import 'package:drumming/utils/labels.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: true,
        title: Label.labelHomeBarTitle,
        titleFontSize: 30.0,
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
                    child: MenuOption(
                      image: Image.asset(
                        "assets/students_cap.png",
                        height: 95.0,
                        width: 130.0,
                      ),
                      title: Label.labelStudents,
                      page: Students(),
                    ),
                  ),
                  MenuOption(
                    image: Image.asset(
                      "assets/schedule.png",
                      height: 85.0,
                      width: 130.0,
                    ),
                    title: Label.labelSchedule,
                    inkPaddingTop: 10.0,
                    page: Container(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}