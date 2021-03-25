import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/mobile_widgets/custom_boxshadow.dart';

class MobilePromotion extends StatelessWidget {
  String promotion = "Django, Tensorflow, Keras, MySQL, SQLite, Bootstrap, Flutter, Javascript, C# gibi bir çok alanda ve araçla, "
      "belirli bir platforma veya programlama diline bağlı kalmadan ihtiyaçlar doğrultusunda uygun bir teknoloji tercih ederek yazılım geliştiriyorum. "
      "Uzmanlık alanım Python ve Flutter"
      "Şuanda ilgilendiğim alanlar: Yapay Zeka, Veri Bilimi ve Mobil Uygulama";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF9933ff),
            Color(0xFF6600cc),
          ], //[Color(0xFFFFC300),Color(0xFFFF9A3F)]
        ),
      ),
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
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/images/pp.png"),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 50,right: 50,top: 0),
                    child: Text("Mustafa Özer", style: GoogleFonts.alikeAngular(fontSize: 25),)
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(promotion, style: GoogleFonts.alikeAngular(letterSpacing: 1.7),)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

