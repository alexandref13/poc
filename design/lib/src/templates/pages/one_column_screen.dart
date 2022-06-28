import 'package:flutter/material.dart';

class OneColumnScreen extends StatelessWidget {
  const OneColumnScreen({
    Key? key,
    this.children,
  }) : super(key: key);

  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: children!.map((item) => item).toList(),
          ),
        ],
      ),
    );
  }
}
