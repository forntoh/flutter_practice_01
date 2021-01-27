import 'package:flutter/material.dart';
import 'package:hi_service_app/constants.dart';

class CustomAppBarItem {
  IconData icon;
  final String label;
  bool hasNotification;

  CustomAppBarItem({this.label, this.icon, this.hasNotification = false});
}

class CustomBottomAppBar extends StatefulWidget {
  final ValueChanged<int> onTabSelected;
  final List<CustomAppBarItem> items;

  CustomBottomAppBar({Key key, this.onTabSelected, this.items}) {
    assert(this.items.length % 2 == 0);
  }

  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  void _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildTabIcon(
      {int index, CustomAppBarItem item, ValueChanged<int> onPressed}) {
    return Expanded(
        child: SizedBox(
            height: 60,
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () => onPressed(index),
                child: _selectedIndex == index ?
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        item.label,
                        style: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.all(Radius.circular(2.5)),
                        ),
                      )
                    ],
                  ) :
                  Icon(
                    item.icon,
                    color: Theme.of(context).disabledColor,
                    size: 24,
                  ),
              ),
            )));
  }

  Widget _buildMiddleSeparator() {
    return SizedBox(
      height: 62,
      width: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [BoxShadow(
                color: Theme.of(context).accentColor.withAlpha(60),
                offset: Offset(0, 5),
                blurRadius: 6
              )]
            ),
            child: Icon(
              Icons.add_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(
        widget.items.length,
        (index) => _buildTabIcon(
              index: index,
              item: widget.items[index],
              onPressed: _updateIndex,
            ));
    items.insert(items.length >> 1, _buildMiddleSeparator());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      height: 62,
      child: Container(
        height: 62,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(offset: Offset(0, -20), color: Colors.white, blurRadius: 15)
        ]),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),
      ),
    );
  }
}
