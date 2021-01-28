import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_service_app/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(height);

  static const double height = 70;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
          BoxShadow(offset: Offset(0, -25), color: Colors.white, blurRadius: 10, spreadRadius: 10)
        ]),
        height: preferredSize.height,
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          children: [
            SizedBox(
              height: preferredSize.height / 2,
              width: preferredSize.height / 2,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    CupertinoIcons.search_circle_fill,
                    color: Theme.of(context).disabledColor,
                    size: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Text('Search ideas...',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .apply(color: textColor.withAlpha(70))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: height * 0.25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  "https://randomuser.me/api/portraits/women/50.jpg"
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
