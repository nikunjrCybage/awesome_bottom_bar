import 'package:flutter/material.dart';

class TabItem<T> {
  final T activeIcon;
  final T inActiveIcon;
  final String? title;
  final Widget? count;
  final String? key;

  const TabItem({
    required this.activeIcon,
    required this.inActiveIcon,
    this.title,
    this.count,
    this.key,
  });
}
