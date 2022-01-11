import 'package:flutter/material.dart';
import 'package:yenedify/Utilities/kConstants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:form_validator/form_validator.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController _IDcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: const Text(
                "FORGOT PASSWORD ?",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                  color: Colors.white12,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
                child: TextFormField(
              obscureText: true,
              controller: _IDcontroller,
              keyboardType: TextInputType.number,
              cursorColor: Colors.blueGrey,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF101010),
                focusColor: Colors.white70,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Campus ID',
                hintText: 'Please Enter your Campus ID',
                hintStyle: TextStyle(
                  color: Colors.white10,
                ),
              ),
              validator: (value) {
                if (value == null) {
                  return "PLEASE ENTER YOUR ID";
                } else
                  return null;
              },
            )),
          ),
          kButton(label: "NEXT", onpress: () {}),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ]),
      ),
    );
  }
}
