import 'package:flutter/material.dart';
import 'package:portfolio/widgets/tools_images.dart';

class ToolsRow extends StatelessWidget {
  final String imageUrl1;
  final String imageUrl2;
  final double size;

  const ToolsRow({@required this.imageUrl1, @required this.imageUrl2, this.size = 200});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ToolImage(imageUrl: imageUrl1,width: size,height: size,),
        ToolImage(imageUrl: imageUrl2,width: size,height: size,),
      ],
    );
  }
}
