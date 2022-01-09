import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'main_login_page.dart';


class loading_Screen extends StatefulWidget {

  @override
  _loading_ScreenState createState() => _loading_ScreenState();
}

class _loading_ScreenState extends State<loading_Screen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => main_login()));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body:
        Center(
            child : SpinKitWanderingCubes(


              color: Colors.white,
              // size: 70.0,
            )

        )
    );
  }
}

