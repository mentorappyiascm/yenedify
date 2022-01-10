import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:yenedify/forgotpass.dart';
//import 'package:flutter/widgets.dart';
//import 'package:form_validator/form_validator.dart';
import 'forgotpass.dart';
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
  Widget topback = Scaffold(
    backgroundColor: Colors.black,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('Group 234.png'),
        ],
      ),
    ),
  );

  Widget titlefield = Container(
    child: Column(
      children: [
        Text(
          'LOGIN',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _EmailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Campus ID',
                        hintText: 'Please Enter your Campus ID'),
                    validator: (value) {
                      if (value == null) {
                        return "Required";
                      } else if (value.length > 5 || value.length < 5) {
                        return "Campus ID must be 5 digits";
                      } else
                        return null;
                    }),
                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Please Enter your Password'),
                    validator: (value) {
                      if (value == null) {
                        return "Required";
                      } else
                        return null;
                    }),
                Padding(padding: EdgeInsets.all(10)),
                const Text(
                  "Forgot Password ?",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 12),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPass()));
                    });
                  },
                ),
                Padding(padding: EdgeInsets.all(20)),
                const Text(
                  'LOGIN',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20),
                ),
                GestureDetector(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _signInWithEmailAndPassword();
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
