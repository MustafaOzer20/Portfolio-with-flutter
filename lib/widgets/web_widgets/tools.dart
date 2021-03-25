import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tools_images.dart';

class Tools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 85,vertical: 50),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Container(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ToolImage(imageUrl: "assets/images/tools/python.png",width: 200,height: 200,),
                    ToolImage(imageUrl: "assets/images/tools/flutter.png",width: 200,height: 100,),
                    ToolImage(imageUrl: "assets/images/tools/tf.png",width: 200,height: 200,),
                    ToolImage(imageUrl: "assets/images/tools/pandas.png",width: 200,height: 200,),
                    ToolImage(imageUrl: "assets/images/tools/matplot.png",width: 200,height: 200,),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ToolImage(imageUrl: "assets/images/tools/sklearn.png",width: 200,height: 200,),
                    ToolImage(imageUrl: "assets/images/tools/numpy.png",width: 200,height: 100,),
                    ToolImage(imageUrl: "assets/images/tools/seaborn.png",width: 200,height: 200,),
                    ToolImage(imageUrl: "assets/images/tools/django.png",width: 200,height: 200,),
                    ToolImage(imageUrl: "assets/images/tools/androidstd.png",width: 200,height: 200,),
                  ],
                ),
              ),

            ],
          ),
        ));
  }
}
