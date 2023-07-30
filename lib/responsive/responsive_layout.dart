import 'package:flutter/material.dart';
import 'package:whatsapp/responsive/screens/mobile.dart';
import 'package:whatsapp/responsive/screens/web.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return WebScreenLayout();
        }
        return MobileScreenLayout();
      },
    );
  }
}
