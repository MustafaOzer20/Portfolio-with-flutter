import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  final String url;
  final String imageUrl;
  final double size;
  final double horizontalPadd;

  const Contact({this.url, this.imageUrl,this.size=40,this.horizontalPadd=10});

  void _launchURL(String _url) async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _launchURL(url);
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: horizontalPadd,vertical: 10),
          child: Image(image:AssetImage(imageUrl),height: size,width: size,)
      ),
    );
  }
}
