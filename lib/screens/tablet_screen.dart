import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tablet_widgets/tablet_contact.dart';
import 'package:portfolio/widgets/tablet_widgets/tablet_promotion.dart';
import 'package:portfolio/widgets/tablet_widgets/tablet_tools.dart';
import '../widgets/contacts.dart';
import 'package:portfolio/widgets/tools_images.dart';

class TabletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 60.0, right: 60, top: 30),
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors:[Color(0xFF9933ff),Color(0xFF6600cc),],
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TabletPromotion(),
              TabletTools(),
              TabletContact(),
            ],
          ),
        ),
      ),

    );
  }
}
