import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/widgets/mobile_widgets/mobile_contact.dart';
import 'package:portfolio/widgets/mobile_widgets/mobile_promotion.dart';
import 'package:portfolio/widgets/mobile_widgets/mobile_tools.dart';
import '../widgets/projects.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen>
    with TickerProviderStateMixin {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<String> pages = ["Ozer", "Projects", "Tools", "Contact"];

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true, i) : _indicator(false, i));
    }
    return list;
  }

  Widget _indicator(bool isActive, int i) {
    return GestureDetector(
      onTap: () {
        _pageController.jumpToPage(i);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        height: 50.0,
        width: isActive ? 120.0 : 80.0,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.deepPurple,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: isActive
            ? Align(
                alignment: Alignment.center,
                child: Text(
                  pages[_currentPage],
                  style: TextStyle(color: Colors.deepPurple, fontSize: 23),
                ))
            : Align(
                alignment: Alignment.center,
                child: Text(
                  pages[i],
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF9933ff),
            Color(0xFF6600cc),
          ], //[Color(0xFFFFC300),Color(0xFFFF9A3F)]
        )),
        child: Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                size < 430
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _buildPageIndicator(),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPageIndicator(),
                      ),
                Container(
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
                      MobilePromotion(),
                      Projects(horizontal: 40,vertical: 40,),
                      MobileTools(),
                      MobileContact(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
