import 'package:drumming/pages/student_register.dart';
import 'package:flutter/material.dart';

class Students extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(208, 165, 74, 10.0),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){}
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
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