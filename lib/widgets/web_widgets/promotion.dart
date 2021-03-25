import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Promotion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Original();
  }
}
class Original extends StatelessWidget {
  String promotion = "Django, Tensorflow, Keras, MySQL, SQLite, Bootstrap, Flutter, Javascript, C# gibi bir çok alanda ve araçla, "
      "belirli bir platforma veya programlama diline bağlı kalmadan ihtiyaçlar doğrultusunda uygun bir teknoloji tercih ederek yazılım geliştiriyorum. "
      "Uzmanlık alanım Python ve Flutter."
      " Şuanda ilgilendiğim alanlar: Yapay Zeka, Veri Bilimi ve Mobil Uygulama";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 70,vertical: 60),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: Container(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 40,right: 40),
              child: CircleAvatar(
                radius: 155,
                backgroundColor: Colors.grey[400],
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 154.5,
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage("assets/images/pp.png"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 50,right: 50,top: 50),
                      child: Text("Mustafa Özer", style: GoogleFonts.alikeAngular(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 50,vertical: 60),
                      child: Text(promotion, style: GoogleFonts.alikeAngular(letterSpacing: 1.7),)
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


