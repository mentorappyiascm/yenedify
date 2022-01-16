import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:flutter_icons/flutter_icons.dart';
import 'attendance.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DraggableHome(
        headerExpandedHeight: 0.75,
        backgroundColor: Colors.black,
        stretchTriggerOffset: 0.2,
        title: Row(
          children: [
            Text(
              '   Notifications  ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  color: Colors.white),
            ),
            Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
          ],
        ),
        headerWidget: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.black,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 30,
                        // color: Colors.pink,
                        child: Image(
                          image : AssetImage(
                            'images/Logo.png',
                        ),
                        )
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.qr_code, color: Colors.white)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.settings_outlined,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //2
              Container(
                // color: Colors.blue,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('images/legobats.png'),
                      ),
                      Text(
                        'Lego Batman',
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        '19BDACC000',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xAEB4B7FF)),
                      )
                    ]),
              ),
              //  2-

              Row(
                children: [
                  CircleButton(context, Color(0xff00E6AF), Color(0xff0094A3),
                      'Attendance', MaterialCommunityIcons.bookmark_check, () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Attendance();
                    }));
                  }),
                  CircleButton(
                      context,
                      Color(0xffFF7171),
                      Color(0xffFFA938),
                      'Resources',
                      MaterialCommunityIcons.cast_education,
                      () {}),
                  CircleButton(
                      context,
                      Color(0xffBF0196),
                      Color(0xff750088),
                      'Performance',
                      MaterialCommunityIcons.account_badge_horizontal,
                      () {}),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              )
            ],
          ),
        ),
        centerTitle: true,
        alwaysShowLeadingAndAction: false,
        headerBottomBar: Row(
          children: [
            Text(
              '   Notifications  ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  color: Colors.white),
            ),
            Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
          ],
        ),

        body: [
          Column(children: [
            notificationCard(
                context,
                ' Exam : Internal Exam Time-Table',
                Icon(Icons.notification_important_outlined,
                    color: Color(0xFF007AFF)),
                () {}),
            notificationCard(
                context,
                ' Notes : Cloud Computing',
                Icon(Icons.notifications_active_outlined,
                    color: Color(0xFF007AFF)),
                () {}),
            notificationCard(
                context,
                ' Assignment : Cloud Computing  ',
                Icon(Icons.notifications_active_outlined,
                    color: Color(0xFF007AFF)),
                () {}),
          ])
        ],
      ),
    );
  }

  GestureDetector notificationCard(context, text, notificationIcon, onpress) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
              color: Color(0xFF212121),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Color(0xFF007AFF))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: notificationIcon),
              Text(text,
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xAEB4B7FF)))
            ],
          ),
        ),
      ),
    );
  } //notication Card

  GestureDetector CircleButton(context, color1, color2, label, icon, onpress) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(35),
                child: Icon(
                  icon,
                  size: 41,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(
                      0.8, 0.0), // 10% of the width, so there are ten blinds.
                  colors: <Color>[
                    color1,
                    color2,
                  ], // red to yellow
                  // repeats the gradient over the canvas
                ),
              ),
            ),
            Text(
              label,
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  } //CircleButton

}
