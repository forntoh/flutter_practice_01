
import 'package:flutter/material.dart';
import 'package:hi_service_app/model/recent_item_model.dart';

import 'item_recently_added.dart';

class RecentsList extends StatelessWidget {
  const RecentsList({
    Key key,
    @required this.recents,
  }) : super(key: key);

  final List<RecentItem> recents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: recents.map((e) => ItemRecentlyAdded(recent: e)).toList(),
    );
  }
}