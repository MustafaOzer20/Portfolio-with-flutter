import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile_widgets/mobile_contact.dart';
import 'package:portfolio/widgets/mobile_widgets/mobile_promotion.dart';
import 'package:portfolio/widgets/mobile_widgets/mobile_tools.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> with TickerProviderStateMixin {
  TabController _tabcontroller;

  @override
  void initState() {
    _tabcontroller = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          labelColor: Colors.white,
          labelPadding: EdgeInsets.all(5.0),
          controller: _tabcontroller,
          indicatorColor: Colors.deepPurple,
          tabs: [
            Tab(text: "Ozer",),//Tab(text: "SOHBETLER",),
            Tab(text: "Tools",),
            Tab(text: "Contact",),
          ],
        ),
      ),
        body: TabBarView(
          controller: _tabcontroller,
          children: [
            MobilePromotion(),
            MobileTools(),
            MobileContact(),
          ],
        )
    );
  }
}


