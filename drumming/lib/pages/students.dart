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
        child: ListView(

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color.fromRGBO(208, 165, 74, 10.0),
        child: Icon(Icons.add),
      ),
    );
  }

}