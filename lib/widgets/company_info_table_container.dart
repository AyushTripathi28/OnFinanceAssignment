import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CompanyInfoTableContainer extends StatelessWidget {
  const CompanyInfoTableContainer(
      {Key? key,
      required this.label,
      required this.icon,
      required this.rightWidget})
      : super(key: key);
  final String label;
  final String icon;
  final Widget rightWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      // margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: blueColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: lightDarkBlue, borderRadius: BorderRadius.circular(4)),
            child: Image(
              height: 17,
              width: 17,
              image: AssetImage(icon),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: TextStyle(
              color: whiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          rightWidget,
        ],
      ),
    );
  }
}
