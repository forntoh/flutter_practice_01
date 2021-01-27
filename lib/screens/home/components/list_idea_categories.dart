import 'package:flutter/material.dart';
import 'package:hi_service_app/model/category_model.dart';
import 'item_idea_category.dart';

class IdeaCategories extends StatelessWidget {
  const IdeaCategories({
    Key key,
    @required this.categories, @required this.onPress,
  }) : super(key: key);

  final List<Category> categories;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: categories
              .map((cat) => IdeaCategoryItem(category: cat, onPress: () => onPress(categories.indexOf(cat))))
              .toList()),
    );
  }
}
