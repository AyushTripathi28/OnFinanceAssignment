import 'package:flutter/material.dart';

import '../utils/constants.dart';

class BottomNavItemWidget extends StatefulWidget {
  const BottomNavItemWidget(
      {super.key,
      required this.index,
      required this.label,
      required this.selectedIcon,
      required this.unelectedIcon,
      required this.widgetIndex});
  final int index;
  final int widgetIndex;
  final String label;
  final String selectedIcon;
  final String unelectedIcon;

  @override
  State<BottomNavItemWidget> createState() => _BottomNavItemWidgetState();
}

class _BottomNavItemWidgetState extends State<BottomNavItemWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          widget.index == widget.widgetIndex
              ? widget.selectedIcon
              : widget.unelectedIcon,
          height: size.height * 0.03,
        ),
        SizedBox(
          height: size.height * 0.002,
        ),
        Text(
          widget.label,
          style: TextStyle(
              fontSize: size.height * 0.015,
              color: widget.index == widget.widgetIndex
                  ? purpleColor
                  : lightGreyColor),
        )
      ],
    );
  }
}
