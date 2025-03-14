import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';

import '../chip_style.dart';
import '../count_style.dart';
import '../tab_item.dart';

class BottomBarInspiredOutside extends StatefulWidget {
  final List<TabItem> items;

  final double? height;
  final Color backgroundColor;
  final double? elevation;
  final bool fixed;
  final int indexSelected;
  final Function(int index)? onTap;
  final Color color;
  final Color colorSelected;
  final double iconSize;
  final TextStyle? activeTitleStyle;
  final TextStyle? inActiveTitleStyle;
  final CountStyle? countStyle;
  final ChipStyle? chipStyle;
  final ItemStyle? itemStyle;
  final List<BoxShadow>? boxShadow;
  final BorderRadius? borderRadius;
  final double? top;
  final bool animated;
  final bool isAnimated;
  final Duration? duration;
  final Curve? curve;
  final double? sizeInside;
  final double? padTop;
  final double? padbottom;
  final double? pad;
  final double? radius;
  final int? fixedIndex;
  final double? centerRadius;
  final LinearGradient? gradientColor;
  final double? curveSize;

  const BottomBarInspiredOutside({
    Key? key,
    required this.items,
    required this.backgroundColor,
    required this.color,
    required this.colorSelected,
    this.height = 40,
    this.elevation,
    this.centerRadius = 0,
    this.gradientColor,
    this.fixed = false,
    this.indexSelected = 0,
    this.onTap,
    this.iconSize = 22,
    this.activeTitleStyle,
    this.inActiveTitleStyle,
    this.countStyle,
    this.chipStyle,
    this.itemStyle,
    this.borderRadius,
    this.boxShadow,
    this.top,
    this.animated = true,
    this.duration,
    this.curve,
    this.sizeInside = 48,
    this.isAnimated = true,
    this.padTop = 12,
    this.padbottom = 12,
    this.pad = 4,
    this.radius = 0,
    this.fixedIndex = 0, this.curveSize,
  }) : super(key: key);

  @override
  _BottomBarInspiredOutsideState createState() => _BottomBarInspiredOutsideState();
}

class _BottomBarInspiredOutsideState extends State<BottomBarInspiredOutside> {
  @override
  Widget build(BuildContext context) {
    return Inspired(
      height: widget.height!,
      background: widget.backgroundColor,
      fixed: widget.fixed,
      elevation: widget.elevation,
      animated: widget.animated,
      isAnimated: widget.animated,
      inActiveTitleStyle: widget.inActiveTitleStyle,
      pad: widget.pad,
      padTop: widget.padTop,
      centerRadius: widget.centerRadius,
      padbottom: widget.padbottom,
      radius: widget.radius,
      fixedIndex: widget.fixedIndex,
      initialActive: widget.indexSelected,
      items: widget.items,
      onTap: widget.onTap,
      chipStyle: widget.chipStyle ?? const ChipStyle(notchSmoothness: NotchSmoothness.defaultEdge),
      curveSize: widget.curveSize ?? 70,
      top: widget.top ?? -28,
      containerSize: 56,
      itemStyle: widget.itemStyle,
      color: widget.color,
      colorSelected: widget.colorSelected,
      iconSize: widget.iconSize,
      countStyle: widget.countStyle,
      activeTitleStyle: widget.activeTitleStyle,
      sizeInside: widget.sizeInside,
      duration: widget.duration,
      curve: widget.curve ?? Curves.easeInOut,
      gradientColor:widget.gradientColor,
      animateStyle: 'scale',
    );
  }
}
