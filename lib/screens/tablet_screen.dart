import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/tablet_widgets/tablet_contact.dart';
import 'package:portfolio/widgets/tablet_widgets/tablet_promotion.dart';
import 'package:portfolio/widgets/tablet_widgets/tablet_tools.dart';
import '../widgets/contacts.dart';
import 'package:portfolio/widgets/tools_images.dart';

class TabletScreen extends StatefulWidget {
  @override
  _TabletScreenState createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;



  List<String> pages = ["Ozer", "Tools", "Contact"];


  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true,i) : _indicator(false,i));
    }
    return list;
  }

  Widget _indicator(bool isActive,int i) {
    return GestureDetector(
      onTap: (){
        _pageController.jumpToPage(i);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        height: 60.0,
        width: isActive ? 200.0 : 100.0,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.deepPurple,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: isActive
            ? Align(alignment:Alignment.center,child: Text(pages[_currentPage],style: TextStyle(color: Colors.deepPurple,fontSize: 23),))
            :Align(alignment:Alignment.center,child: Text(pages[i],style: TextStyle(color: Colors.white,fontSize: 15),)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors:[Color(0xFF9933ff),Color(0xFF6600cc),], //[Color(0xFFFFC300),Color(0xFFFF9A3F)]
            )
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  height: 577,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      TabletPromotion(),
                      TabletTools(),
                      TabletContact()
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),);
  }
}


