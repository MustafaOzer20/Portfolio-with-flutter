import 'package:flutter/material.dart';

class ToolImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const ToolImage({this.imageUrl, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: width,
      height: height,
      child: Image(image: AssetImage(imageUrl),),
    );
  }
}
