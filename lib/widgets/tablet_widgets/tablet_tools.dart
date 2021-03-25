import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tools_images.dart';

class TabletTools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
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
              ToolImage(imageUrl: "assets/images/tools/python.png",width: 200,height: 200,),
              ToolImage(imageUrl: "assets/images/tools/flutter.png",width: 200,height: 100,),
              ToolImage(imageUrl: "assets/images/tools/tf.png",width: 200,height: 200,),
              ToolImage(imageUrl: "assets/images/tools/pandas.png",width: 200,height: 200,),
              ToolImage(imageUrl: "assets/images/tools/matplot.png",width: 200,height: 200,),
              ToolImage(imageUrl: "assets/images/tools/sklearn.png",width: 200,height: 200,),
              ToolImage(imageUrl: "assets/images/tools/numpy.png",width: 200,height: 100,),
              ToolImage(imageUrl: "assets/images/tools/seaborn.png",width: 200,height: 200,),
              ToolImage(imageUrl: "assets/images/tools/django.png",width: 200,height: 200,),
              ToolImage(imageUrl: "assets/images/tools/androidstd.png",width: 200,height: 200,),
            ],
          ),
        )
    );
  }
}
