
import 'package:flutter/material.dart';
import 'package:hi_service_app/constants.dart';

class TitleWithAction extends StatelessWidget {
  const TitleWithAction({
    Key key, this.title, this.onPress,
  }) : super(key: key);

  final Function onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPaddingIcon),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Spacer(),
          GestureDetector(
            onTap: onPress,
            child: Row(
              children: [
                Text(
                  'See all',
                  style: TextStyle(color: textColor.withAlpha(80)),
                ),
                Icon(
                  Icons.arrow_right_alt_rounded,
                  color: textColor.withAlpha(60),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
