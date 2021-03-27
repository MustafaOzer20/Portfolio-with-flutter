import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectImage extends StatelessWidget {

  final String url;
  final String imageUrl;
  final double size;
  final double horizontalPadd;
  final String text;

  const ProjectImage({this.url, this.imageUrl,this.size=40,this.horizontalPadd=10, this.text,});

  void _launchURL(String _url) async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _launchURL(url);
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: horizontalPadd),
          child: Column(
            children: [
              Image(image:AssetImage(imageUrl),height: size,width: size,),
              Text(text, style: GoogleFonts.iceberg(fontSize: 15),),
            ],
          )
      ),
    );
  }
}
