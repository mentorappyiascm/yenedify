import 'package:flutter/painting.dart';
import 'package:yenedify/Screens/Home.dart';
import 'package:yenedify/Utilities/kConstants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signup2.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // final _auth = FirebaseAuth.instance;
  // final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  // //final TextEditingController _idController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  // //final TextEditingController _regIDController = TextEditingController();
  // final TextEditingController _pass2Controller = TextEditingController();
  // //final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:true,
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                // color: Colors.red,
              ),
            ),
            Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Container(
                    // color: Colors.blue,
                    child: Form(
                      // key: _formkey,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(53, 0, 53, 0),
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                                child: Text(
                                  "Register",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 30,
                                      letterSpacing: 1),
                                ),
                              ),
                            ),
                            Container(
                              // color: Colors.amberAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildCampusID(),
                                  SizedBox( height:  17),
                                  _buildEmailID(),
                                  SizedBox( height:  17),
                                  _buildPassword(),
                                  SizedBox( height:  17),
                                  _buildConfirmPassword(),
                                  SizedBox( height:  17),

                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: kButton(
                                        label: "NEXT",
                                        onpress: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) {
                                                return Signup2();
                                              }),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            // Expanded(
            //   child: Container(
            //     color: Colors.green,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

InputDecoration _buildInputDecoration(hintt) {
  return InputDecoration(
      isDense: true,
      contentPadding: EdgeInsets.all(10),
      filled: true,
      fillColor: Color(0x11FFFFFF),
      focusColor: Colors.white70,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      hintText: hintt,
      hintStyle: TextStyle(
        fontSize: 15,
        color: Colors.white24,
      ));
}

Widget _buildCampusID() {
  return TextFormField(
      style: GoogleFonts.poppins(color: Colors.white),
      //keyboardType: TextInputType.number,
      // controller: _emailController,
      cursorColor: Colors.blueGrey,
      decoration: _buildInputDecoration("CampusID"));
}


Widget _buildEmailID() {
  return TextFormField(
      style: GoogleFonts.poppins(color: Colors.white),
      //keyboardType: TextInputType.number,
      // controller: _emailController,
      cursorColor: Colors.blueGrey,
      decoration: _buildInputDecoration("Email ID"));
}

Widget _buildPassword() {
  return TextFormField(
      style: GoogleFonts.poppins(color: Colors.white),
      // controller: _passwordController,
      cursorColor: Colors.blueGrey,
      decoration: _buildInputDecoration("Password"));
}

Widget _buildConfirmPassword() {
  return TextFormField(
      style: GoogleFonts.poppins(color: Colors.white),
      // controller: _pass2Controller,
      cursorColor: Colors.blueGrey,
      decoration: _buildInputDecoration("Confirm Password"));
}
