import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tablet_widgets/tools_row.dart';

import 'custom_boxshadow.dart';

class MobileTools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 50,right: 50,top: 25),
                  child: Text("Tools", style: GoogleFonts.alikeAngular(color: Colors.deepPurple,fontSize: 40),)
              ),
              ToolsRow(imageUrl1: "assets/images/tools/python.png", imageUrl2: "assets/images/tools/flutter.png",size: 120,),
              ToolsRow(imageUrl1: "assets/images/tools/tf.png", imageUrl2: "assets/images/tools/pandas.png",size: 120,),
              ToolsRow(imageUrl1: "assets/images/tools/matplot.png", imageUrl2: "assets/images/tools/sklearn.png",size: 120,),
              ToolsRow(imageUrl1: "assets/images/tools/numpy.png", imageUrl2: "assets/images/tools/seaborn.png", size: 120,),
              ToolsRow(imageUrl1: "assets/images/tools/django.png", imageUrl2: "assets/images/tools/androidstd.png",size: 120,),
            ],
          ),
        ),
      ),
    );
  }
}
