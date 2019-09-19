import 'package:flutter/material.dart';

class StudentRegister extends StatefulWidget {
  @override
  _StudentRegisterState createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {

  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mainNumberController = TextEditingController();
  final _optionalNumberController = TextEditingController();

  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(208, 165, 74, 10.0),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 25.0),
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/rocking.png"),
                )
              ),
            ),
          ),
          Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (name){
                    return name.isEmpty
                        ? "Please enter your name"
                        : null;
                  },
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(208, 165, 74, 10.0)
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(208, 165, 74, 10.0))
                    )
                  ),
                  cursorColor: Color.fromRGBO(208, 165, 74, 10.0),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}
