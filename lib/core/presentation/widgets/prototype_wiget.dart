import 'package:flutter/material.dart';

class PrototypeListViewHorizontal extends StatelessWidget {
  final Widget prototype;
  final ListView listView;

  const PrototypeListViewHorizontal({
    Key? key,
    required this.prototype,
    required this.listView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          child: Opacity(
            opacity: 0.0,
            child: prototype,
          ),
        ),
        SizedBox(width: double.infinity),
        Positioned.fill(child: listView),
      ],
    );
  }
}