import 'package:drumming/components/custom_appbar.dart';
import 'package:drumming/pages/student_register.dart';
import 'package:drumming/utils/labels.dart';
import 'package:flutter/material.dart';

class Students extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(
        isLeading: true,
        isHome: false,
        centerTitle: true,
        title: Label.labelStudentsBarTitle,
        icons: [Icon(Icons.search)],
        callbacks: [
          (){}
        ],
        iconListSize: 1,
      ),
      body: Container(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.black,
                ),

              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => StudentRegister()));
        },
        backgroundColor: Color.fromRGBO(208, 165, 74, 10.0),
        child: Icon(Icons.add),
      ),
    );
  }

}