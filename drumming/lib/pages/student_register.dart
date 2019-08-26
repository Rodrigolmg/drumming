import 'package:flutter/material.dart';

class StudentRegister extends StatefulWidget {
  @override
  _StudentRegisterState createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(208, 165, 74, 10.0),

      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(208, 165, 74, 10.0),
                    width: 0.5
                  )
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
