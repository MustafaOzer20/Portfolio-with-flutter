import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_boxshadow.dart';

class MobileTools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
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
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 50,right: 50,top: 25),
                  child: Text("Tools", style: GoogleFonts.alikeAngular(color: Colors.deepPurple,fontSize: 25),)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Image(image: AssetImage("assets/images/tools/python.png"),width: 120, height: 100,)
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Image(image: AssetImage("assets/images/tools/flutter.png"),width: 120, height: 100,)
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Image(image: AssetImage("assets/images/tools/tf.png"),width: 120, height: 100,)
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Image(image: AssetImage("assets/images/tools/sklearn.png"),width: 120, height: 100,)
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Image(image: AssetImage("assets/images/tools/matplot.png"),width: 120, height: 100,)
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Image(image: AssetImage("assets/images/tools/pandas.png"),width: 120, height: 100,)
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Image(image: AssetImage("assets/images/tools/django.png"),width: 120, height: 100,)
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Image(image: AssetImage("assets/images/tools/androidstd.png"),width: 120, height: 100,)
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
