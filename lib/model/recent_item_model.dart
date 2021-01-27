import 'package:flutter/cupertino.dart';
import 'package:hi_service_app/model/category_model.dart';

class RecentItem {
  RecentItem({@required this.text, @required this.date, @required this.category});

  final Category category;
  final String date;
  final String text;
}
