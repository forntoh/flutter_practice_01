
import 'package:flutter/material.dart';
import 'package:hi_service_app/constants.dart';

class HeaderWithName extends StatelessWidget {
  const HeaderWithName({
    Key key,
    @required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPaddingIcon),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back, $name!',
            style: Theme.of(context).textTheme.bodyText1.apply(color: textColor.withAlpha(60)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Got some bright ideas today?',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
