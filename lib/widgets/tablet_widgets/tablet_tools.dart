import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tablet_widgets/tools_row.dart';
import 'package:portfolio/widgets/tools_images.dart';

class TabletTools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        height: 500,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 50,right: 50,top: 40),
                  child: Text("Tools", style: GoogleFonts.alikeAngular(color: Colors.deepPurple,fontSize: 35),)
              ),
              ToolsRow(imageUrl1: "assets/images/tools/python.png", imageUrl2: "assets/images/tools/flutter.png"),
              ToolsRow(imageUrl1: "assets/images/tools/tf.png", imageUrl2: "assets/images/tools/pandas.png"),
              ToolsRow(imageUrl1: "assets/images/tools/matplot.png", imageUrl2: "assets/images/tools/sklearn.png"),
              ToolsRow(imageUrl1: "assets/images/tools/numpy.png", imageUrl2: "assets/images/tools/seaborn.png"),
              ToolsRow(imageUrl1: "assets/images/tools/django.png", imageUrl2: "assets/images/tools/androidstd.png"),
            ],
          ),
        )
    );
  }
}
