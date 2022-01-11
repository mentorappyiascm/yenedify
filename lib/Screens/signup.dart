import 'dart:html';
import 'package:yenedify/Utilities/kConstants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  //final TextEditingController _idController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //final TextEditingController _regIDController = TextEditingController();
  final TextEditingController _pass2Controller = TextEditingController();
  //final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
                flex: 7,
                child: Form(
                  key: _formkey,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(53, 0, 53, 53),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "REGISTER",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                letterSpacing: 2),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          //keyboardType: TextInputType.number,
                          controller: _emailController,
                          cursorColor: Colors.blueGrey,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFF101010),
                              focusColor: Colors.white70,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Email ID",
                              hintStyle: TextStyle(
                                color: Colors.white10,
                              )),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          cursorColor: Colors.blueGrey,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF101010),
                            focusColor: Colors.white70,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.white10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: _pass2Controller,
                          cursorColor: Colors.blueGrey,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF101010),
                            focusColor: Colors.white70,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Password Again",
                            hintStyle: TextStyle(
                              color: Colors.white10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        kButton(
                            label: "REGISTER",
                            onpress: () async {
                              AlertDialog(
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: [
                                      Opacity(opacity: 20),
                                      Text(
                                        "Confirm Data",
                                        style: TextStyle(
                                            color: Colors.white12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            letterSpacing: 2),
                                      ),
                                      kButton(
                                        label: 'Confirm',
                                        onpress: () {},
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
