import 'package:flutter/cupertino.dart';

class Category {
  Category({this.icon, this.name});

  final CategoryIcon icon;
  final String name;
}

class CategoryIcon {
  CategoryIcon(this.color, this.icon);

  final Color color;
  final IconData icon;
}
