
import 'package:flutter/material.dart';
import 'package:portfolio/screens/mobile_screen.dart';
import 'package:portfolio/screens/tablet_screen.dart';
import 'web_screen.dart';
import '../widgets/web_widgets/promotion.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
         builder: (context, constrain){
            if(constrain.maxWidth>1107)
              return WebScreen();
            else if(constrain.maxWidth>600)
              return TabletScreen();
            return MobileScreen();
          },
      ),
    );
  }
}
