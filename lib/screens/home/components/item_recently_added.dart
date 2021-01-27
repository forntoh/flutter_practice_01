import 'package:flutter/material.dart';
import 'package:hi_service_app/constants.dart';
import 'package:hi_service_app/model/recent_item_model.dart';

import 'item_idea_category.dart';

class ItemRecentlyAdded extends StatelessWidget {
  const ItemRecentlyAdded({
    Key key,
    this.recent,
  }) : super(key: key);

  final RecentItem recent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: defaultPaddingIcon, right: defaultPadding),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Color(0xFFFDFDFD),
              border: Border.all(color: textColor.withAlpha(50), width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(recent.text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              SizedBox(height: 4),
              Text(recent.date, style: TextStyle(color: textColor.withAlpha(65)))
            ],
          )),
          Container(
            width: 35,
            margin: EdgeInsets.only(right: defaultPaddingIcon),
            child: CategoryIconButton(icon: recent.category.icon, isSmall: true),
          )
        ],
      ),
    );
  }
}
