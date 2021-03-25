import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabletPromotion extends StatelessWidget {
  String promotion = "Django, Tensorflow, Keras, MySQL, SQLite, Bootstrap, Flutter, Javascript, C# gibi bir çok alanda ve araçla, "
      "belirli bir platforma veya programlama diline bağlı kalmadan ihtiyaçlar doğrultusunda uygun bir teknoloji tercih ederek yazılım geliştiriyorum. "
      "Uzmanlık alanım Python ve Flutter"
      "Şuanda ilgilendiğim alanlar: Yapay Zeka, Veri Bilimi ve Mobil Uygulama";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: CircleAvatar(
                  radius: 103.5,
                  backgroundColor: Colors.deepPurple,
                  child: CircleAvatar(
                    radius: 103,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("assets/images/pp.png"),
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 50,right: 50,top: 10),
                  child: Text("Mustafa Özer", style: GoogleFonts.alikeAngular(fontSize: 35),)
              ),
              Container(
                  padding: EdgeInsets.only(left: 50,right: 50, top: 20, bottom: 60),
                  child: Text(promotion, style: GoogleFonts.alikeAngular(letterSpacing: 1.7),)
              )
            ],
          ),
        )
    );
  }
}
