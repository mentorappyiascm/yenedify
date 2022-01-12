import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/widgets.dart';
import 'package:form_validator/form_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utilities/kConstants.dart';
import 'signup.dart';


import 'package:yenedify/Screens/forgotpass.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // final TextEditingController _EmailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

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
        // resizeToAvoidBottomInset : false,
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Expanded(
                flex: 5,
                child:
                //   Top part
                Container(
                  // color: Colors.red,
                ),
              ),

              Expanded(
                flex: 6,
                child:
                SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Container(
                    // Middle part
                    // color: Colors.blue,
                    child: Form(
                      // key: _formKey,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(53, 0, 53, 0),
                        child: Container(
                          child: Column(
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

                              SizedBox(height: 9,),

                              Column(
                                  children: [
                                    Column(
                                        children: [

                                          TextFormField(
                                            style: TextStyle(
                                              color: Colors.white54,
                                            ),
                                            keyboardType: TextInputType.number,
                                            // controller: _EmailController,
                                            cursorColor: Colors.blueGrey,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Color(0xFF171717),
                                              focusColor: Colors.white70,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8),
                                                borderSide: BorderSide.none,
                                              ),
                                              // labelText: 'Campus ID',
                                              hintText: 'Please Enter your Campus ID',
                                              hintStyle: TextStyle(
                                                color: Colors.white12,
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value == null) {
                                                return "Required";}
                                              else if (value.length > 5 ||
                                                  value.length < 5) {
                                                return "Campus ID must be 5 digits";
                                              } else
                                                return null;
                                            },
                                          ),

                                          Padding(padding: EdgeInsets.fromLTRB(10, 10,10, 0)),
                                          TextFormField(
                                            style: TextStyle(
                                              color: Colors.white54,
                                            ),
                                            // controller: _passwordController,
                                            cursorColor: Colors.blueGrey,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Color(0xFF171717),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5),
                                                borderSide: BorderSide.none,
                                              ),
                                              // labelText: 'Password',
                                              hintText: 'Please Enter your Password',
                                              hintStyle: TextStyle(
                                                color: Colors.white12,
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value == null) {
                                                return "Required";
                                              } else
                                                return null;},
                                          ),
                                        ]),


                                    SizedBox(
                                      height: 20,
                                    ),

                                    kButton(
                                      label: "LOGIN",
                                      onpress: ()=> print("hit"),
                                    ),

                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      heightFactor: 4,
                                      child: Column(
                                          children : [
                                            GestureDetector(
                                                child:
                                                // Row(
                                                //   children: [
                                                //     Text(
                                                //       "New User?",
                                                //       style: GoogleFonts.poppins(color: Colors.white70,
                                                //       )
                                                //     ),
                                                    Text(
                                                      "New User? Register here!",
                                                      style: GoogleFonts.poppins(color: Colors.white),
                                                    ),
                                                //   ],
                                                // ),
                                                onTap: () { Navigator.push(context,
                                                    MaterialPageRoute(builder: (context)
                                                    { return Signup();}
                                                    ));}
                                            ),
                                          ] ),
                                    ),


                                  ]),


                              // FADHIL defined code for reference

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
                ),

              ),
              // Expanded(
              //   flex: 1,
              //   child: Container(
              //
              //     //bottom space
              //     color: Colors.green,
              //   ),
              // ),

            ],)
      ),
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

// _signInWithEmailAndPassword() async {
//   try {
//     final user = (await _firebaseAuth.signInWithEmailAndPassword(
//         email: _EmailController.text.trim(),
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
}
