import 'package:flutter/material.dart';
import 'package:hi_service_app/constants.dart';
import 'package:hi_service_app/model/category_model.dart';

class IdeaCategoryItem extends StatelessWidget {
  const IdeaCategoryItem({
    Key key,
    @required this.category,
    @required this.onPress,
  }) : super(key: key);

  final Category category;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          left: defaultPaddingIcon,
          right: defaultPadding / 2,
          bottom: defaultPadding,
          top: defaultPaddingIcon),
      child: Column(
        children: [
          GestureDetector(
            onTap: onPress,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              width: size.width * 0.16,
              child: CategoryIconButton(icon: category.icon),
            ),
          ),
          Text(
            category.name,
            style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class CategoryIconButton extends StatelessWidget {
  const CategoryIconButton({
    Key key,
    @required this.icon,
    this.isSmall = false,
  }) : super(key: key);

  final CategoryIcon icon;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
            color: icon.color,
            borderRadius: BorderRadius.all(Radius.circular(isSmall ? 14 : 18)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, isSmall ? 8 : 12),
                  blurRadius: isSmall ? 10 : 20,
                  color: icon.color.withAlpha(isSmall ? 30 : 60))
            ]),
        child: Icon(
          icon.icon,
          size: isSmall ? 16 : 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
