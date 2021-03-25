import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/contacts.dart';
import 'package:portfolio/widgets/mobile_widgets/custom_boxshadow.dart';

class MobileContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF9933ff),
              Color(0xFF6600cc),
            ], //[Color(0xFFFFC300),Color(0xFFFF9A3F)]
          ),
        ),
        height: 240,
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [CustomBoxShadow(
                  color: Colors.white,
                  offset: new Offset(5.0, 5.0),
                  blurRadius: 5.0,
                  blurStyle: BlurStyle.outer
              ),],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Contact Me", style: GoogleFonts.iceberg(fontSize: 25),)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Email : ", style: GoogleFonts.iceberg(fontWeight: FontWeight.bold),),
                  Text("ozerr.stt@gmail.com", style: GoogleFonts.iceberg(),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Contact(imageUrl: "assets/images/contact/github.png",url: "https://github.com/MustafaOzer20",),
                  Contact(imageUrl: "assets/images/contact/linkedin.png",url: "https://www.linkedin.com/in/mustafa-%C3%B6zer-74b2b0200/",),
                  Contact(imageUrl: "assets/images/contact/twitter.png",url: "https://twitter.com/infraredstt",size: 35.0,),
                  Contact(imageUrl: "assets/images/contact/instagram.png",url: "https://instagram.com/ozerr.st",size: 70.0,horizontalPadd: 0.0,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
