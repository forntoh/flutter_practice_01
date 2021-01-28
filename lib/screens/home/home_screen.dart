import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_service_app/constants.dart';
import 'package:hi_service_app/components/custom_bottom_bar.dart';
import 'package:hi_service_app/screens/home/components/body.dart';


class HomeScreen extends StatelessWidget {
  AppBar buildAppBar(context) {
    return AppBar(
      brightness: Brightness.light,
      toolbarHeight: 90,
      elevation: 0,
      title: Text('Search ideas...', style: Theme.of(context).textTheme.subtitle1.apply(color: textColor.withAlpha(70)),),
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: defaultPadding),
        child: IconButton(icon: Icon(Icons.search_outlined), onPressed: null),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPaddingIcon, vertical: defaultPadding + 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network("https://randomuser.me/api/portraits/women/50.jpg"),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
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