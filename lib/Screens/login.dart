import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/widgets.dart';
import 'package:form_validator/form_validator.dart';

import '../Utilities/kConstants.dart';

import 'package:yenedify/forgotpass.dart';

import 'Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override

  // Widget topback = Scaffold(
  //   backgroundColor: Colors.black,
  //   body: Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Image.asset('Group 234.png'),
  //       ],
  //     ),
  //   ),
  // );

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Expanded(
                flex: 6,
                child:
                    //   Top part
                    Container(
                        // color: Colors.red,
                        ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  // Middle part
                  // color: Colors.blue,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(53, 0, 53, 53),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('LOGIN',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 35,
                                    letterSpacing: 2)),
                          ),

                          SizedBox(
                            height: 9,
                          ),

                          TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _EmailController,
                              cursorColor: Colors.blueGrey,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF101010),
                                focusColor: Colors.white70,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                // labelText: 'Campus ID',
                                hintText: 'Please Enter your Campus ID',
                                hintStyle: TextStyle(
                                  color: Colors.white10,
                                ),
                              ),
                              validator: (value) {
                                if (value == null) {
                                  return "Required";
                                } else if (value.length > 5 ||
                                    value.length < 5) {
                                  return "Campus ID must be 5 digits";
                                } else
                                  return null;
                              }),
                          Padding(padding: EdgeInsets.all(10)),
                          TextFormField(
                              controller: _passwordController,
                              cursorColor: Colors.blueGrey,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFF101010),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide.none,
                                  ),
                                  // labelText: 'Password',
                                  hintText: 'Please Enter your Password',
                                  hintStyle: TextStyle(
                                    color: Colors.white10,
                                  )),
                              validator: (value) {
                                if (value == null) {
                                  return "Required";
                                } else
                                  return null;
                              }),

                          SizedBox(
                            height: 20,
                          ),

                          kButton(
                            label: "LOGIN",
                            onpress: () => print("hit"),
                          )

                          // FADHIL defined code for reference

                          // GestureDetector(
                          //
                          //   child:
                          //   Container(
                          //     alignment: Alignment.center,
                          //
                          //     height: 30,
                          //     width: 100,
                          //     decoration: BoxDecoration(
                          //       color: Color(0xBA01979F),
                          //       borderRadius: BorderRadius.circular(5),
                          //     ),
                          //     child:
                          //     Text(
                          //       'LOGIN',
                          //       style: GoogleFonts.poppins(
                          //         color: Colors.white54,
                          //         fontSize: 16
                          //       ),
                          //     ),
                          //
                          //   ),
                          //   onTap: () {
                          //     print("hit");
                          //   }
                          //   ),

                          // async {
                          //   if (_formKey.currentState!.validate()) {
                          //     setState(() {
                          //       // _signInWithIdAndPassword();
                          //     }
                          //     );
                          //   }
                          // },
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    //bottom space
                    // color: Colors.green,
                    ),
              ),
            ],
          )),
    );
  }

  // _signInWithIdAndPassword() async {
  //   try {
  //     final user = (await _firebaseAuth.signInWithEmailAndPassword(email: _EmailController.text.trim(),
  //         password: _passwordController.text.trim()));
  //     if (user != null) {
  //       void setState() {
  //         Fluttertoast.showToast(msg: "Signed In Sucessfully");
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(builder: (context) => HomePage()),
  //         );
  //       }
  //     }
  //   } catch (e) {
  //     Fluttertoast.showToast(msg: e.toString());
  //   }
  // }

  _signInWithEmailAndPassword() async {
    try {
      final user = (await _firebaseAuth.signInWithEmailAndPassword(
          email: _EmailController.text.trim(),
          password: _passwordController.text.trim()));
      if (user != null) {
        void setState() {
          Fluttertoast.showToast(msg: "Signed In Sucessfully");
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
