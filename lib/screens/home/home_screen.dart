import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_service_app/components/custom_app_bar.dart';
import 'package:hi_service_app/components/custom_bottom_bar.dart';
import 'package:hi_service_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: Body(),
      bottomNavigationBar: CustomBottomAppBar(
        onTabSelected: (int) {},
        items: [
          CustomAppBarItem(icon: Icons.home, label: 'Home'),
          CustomAppBarItem(icon: Icons.bar_chart_outlined, label: 'Statistics'),
          CustomAppBarItem(icon: CupertinoIcons.doc_fill, label: 'Files'),
          CustomAppBarItem(icon: Icons.settings, label: 'Settings'),
        ],
      ),
    );
  }
}