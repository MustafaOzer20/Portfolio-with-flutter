import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../contacts.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 85),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Container(
          child:Column(
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
                  Contact(imageUrl: "assets/images/contact/twitter.png",url: "https://twitter.com/infraredstt",size: 35,),
                  Contact(imageUrl: "assets/images/contact/instagram.png",url: "https://instagram.com/ozerr.st",size: 70,horizontalPadd: 0,),
                ],
              )
            ],
          )
        ));
  }
}
