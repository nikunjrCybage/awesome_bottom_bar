import 'package:flutter/material.dart';

import '../tab_item.dart';
import '../count_style.dart';

class BuildIcon extends StatelessWidget {
  final TabItem item;
  final double iconSize;
  final Color iconColor;
  final CountStyle? countStyle;
  final  bool active;

  const BuildIcon({
    Key? key,
    required this.item,
    required this.iconColor,
    this.iconSize = 22,
    this.countStyle,  this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget icon = active ? (item.activeIcon is Widget) ? ColorFiltered(
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        child : item.activeIcon) : Icon(
      item.activeIcon,
      size: iconSize,
      color: iconColor,
    ):(item.inActiveIcon is Widget) ? ColorFiltered(
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        child : item.inActiveIcon) : Icon(
      item.inActiveIcon,
      size: iconSize,
      color: iconColor,
    );
    if (item.count is Widget) {
      double sizeBadge = countStyle?.size ?? 18;

      return Stack(
        clipBehavior: Clip.none,
        children: [
          icon,
          Positioned(
            right: -5,
            top: -5,
            child: item.count!,
          ),
        ],
      );
    }
    return icon;
  }
}
