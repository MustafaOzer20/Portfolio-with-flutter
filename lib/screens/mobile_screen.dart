import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/mobile_widgets/custom_boxshadow.dart';
import 'package:portfolio/widgets/mobile_widgets/mobile_contact.dart';
import 'package:portfolio/widgets/mobile_widgets/mobile_promotion.dart';
import 'package:portfolio/widgets/mobile_widgets/mobile_tools.dart';
import '../widgets/contacts.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MobilePromotion(),
          MobileTools(),
          MobileContact(),
        ],
      ),
    );
  }
}

