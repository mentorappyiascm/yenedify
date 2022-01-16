
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yenedify/Screens/Home.dart';
import 'package:yenedify/Utilities/kConstants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                // color: Colors.red,

              ),
            ),
            Expanded(
                flex: 7,
                child: Container(
                  // color: Colors.blue,
                  child: Form(
                    // key: _formkey,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(53, 0, 53, 53),
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

                          Expanded(
                            child: Column(

                              children: [
                                _buildRegisterNumber(),
                                SizedBox( height:  17),
                                _buildName(),
                                SizedBox( height:  17),
                                _buildPhone(),
                                SizedBox( height:  17),


                                kButton(
                                  label: "REGISTER",
                                  onpress: () =>
                                      showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                                insetPadding: EdgeInsets.all(15),
                                                titlePadding: EdgeInsets.all(10),
                                                backgroundColor: Colors.blueGrey,
                                                content: SingleChildScrollView(
                                                  child: ListBody(
                                                    children: [
                                                      Text(
                                                        "Confirm Data?",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.white70,
                                                          fontFamily: 'Poppins',
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                actions: <Widget>[
                                                  TextButton(
                                                    style: ButtonStyle(
                                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black38)
                                                    ),
                                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                                    child: const Text('Cancel',
                                                      style: TextStyle(
                                                          color: Colors.white70
                                                      ),),
                                                  ),

                                                  TextButton(
                                                    style: ButtonStyle(
                                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black38)
                                                    ),
                                                    onPressed: () { Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                                                      return HomePage();
                                                    }), (_) => false);},
                                                    child: const Text('Confirm',
                                                      style: TextStyle(
                                                          color: Colors.white70
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),

            Expanded(
              child: Container(
                // color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );





  }




}

InputDecoration _buildInputDecoration(hintt){
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


Widget _buildRegisterNumber() {
  return TextFormField(
      style: GoogleFonts.poppins(color: Colors.white),
      //keyboardType: TextInputType.number,
      // controller: _emailController,
      cursorColor: Colors.blueGrey,
      decoration: _buildInputDecoration("Register Number")
  );
}


Widget _buildName() {
  return TextFormField(
      style: GoogleFonts.poppins(color: Colors.white),
      //keyboardType: TextInputType.number,
      // controller: _emailController,
      cursorColor: Colors.blueGrey,
      decoration: _buildInputDecoration("Name")
  );
}


Widget _buildPhone() {
  return TextFormField(
      style: GoogleFonts.poppins(color: Colors.white),
      //keyboardType: TextInputType.number,
      // controller: _emailController,
      cursorColor: Colors.blueGrey,
      decoration: _buildInputDecoration("Phone Number")
  );
}


