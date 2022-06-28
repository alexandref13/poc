import 'package:design/design.dart';
import 'package:flutter/material.dart';

class DefaultListItem extends StatelessWidget {
  const DefaultListItem({
    Key? key,
    required this.title,
    this.subtitle,
    required this.leading,
    this.trailing,
  }) : super(key: key);

  final Widget title;
  final Widget? subtitle;
  final Widget leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title,
      subtitle: subtitle,
      leading: leading,
      trailing: trailing,
      contentPadding: EdgeInsets.all(Dots.p8.value),
    );
  }
}
