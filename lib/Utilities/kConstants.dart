import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yenedify/Screens/splash_screen.dart';

class kButton extends StatelessWidget {
  const kButton({required this.label,required this.onpress});
  final String label;
  final void Function() onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child:
        Container(
          alignment: Alignment.center,

          height: 30,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0xBA01979F),
            borderRadius: BorderRadius.circular(5),
          ),
          child:
          Text(
            'LOGIN',
            style: GoogleFonts.poppins(
                color: Colors.white54,
                fontSize: 16
            ),
          ),

        ),
        onTap: () {
          onpress;
        }
    );
  }
}
