import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_service_app/components/custom_app_bar.dart';
import 'package:hi_service_app/constants.dart';
import 'package:hi_service_app/model/category_model.dart';
import 'package:hi_service_app/model/recent_item_model.dart';
import 'package:hi_service_app/screens/home/components/header_with_name.dart';
import 'package:hi_service_app/screens/home/components/title_with_action.dart';
import 'list_idea_categories.dart';
import 'list_recents.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    List<Category> categories = [
      Category(
        icon: CategoryIcon(green, CupertinoIcons.person_fill),
        name: 'Personal',
      ),
      Category(
        icon: CategoryIcon(blue, CupertinoIcons.person_2_fill),
        name: 'Family',
      ),
      Category(
        icon: CategoryIcon(purple, CupertinoIcons.briefcase_fill),
        name: 'Work',
      ),
      Category(
        icon: CategoryIcon(orange, CupertinoIcons.lightbulb_fill),
        name: 'Various',
      ),
      Category(
        icon: CategoryIcon(pink, CupertinoIcons.heart_fill),
        name: 'Relationship',
      ),
    ];

    List<RecentItem> recents = [
      RecentItem(
          text: 'Brainstorm company name',
          date: 'Today, 09:31',
          category: categories[0]),
      RecentItem(
          text: 'Summer outfit ideas',
          date: 'Yesterday, 21:36',
          category: categories[2]),
      RecentItem(
          text: 'How to engage customers',
          date: 'May 29, 08:17',
          category: categories[3]),
      RecentItem(
          text: 'Next city-break',
          date: 'May 24, 21:36',
          category: categories[1]),
      RecentItem(
          text: 'Next city-break',
          date: 'May 24, 21:36',
          category: categories[0]),
      RecentItem(
          text: 'Vacation ideas with...',
          date: 'Feb 14, 19:36',
          category: categories[4]),
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: CustomAppBar.height + defaultPadding),
        child: Column(
          children: [
            HeaderWithName(name: 'Beldine'),
            IdeaCategories(categories: categories,onPress: (int index) {}),
            TitleWithAction(title: 'Recently added', onPress: () {}),
            RecentsList(recents: recents),
            SizedBox(height: defaultPaddingIcon)
          ],
        ),
      ),
    );
  }
}
