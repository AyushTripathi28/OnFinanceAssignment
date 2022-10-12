import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CompanyInfoListItemWidget extends StatelessWidget {
  const CompanyInfoListItemWidget(
      {Key? key,
      required this.label,
      required this.icon,
      required this.valueWidget})
      : super(key: key);
  final String label;
  final String icon;
  final Widget valueWidget;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: size.height * 0.006, horizontal: size.height * 0.013),
      // margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: blueColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(size.height * 0.012),
            decoration: BoxDecoration(
                color: lightDarkBlue, borderRadius: BorderRadius.circular(4)),
            child: Image(
              height: size.height * 0.021,
              width: size.height * 0.021,
              image: AssetImage(icon),
            ),
          ),
          SizedBox(
            width: size.height * 0.018,
          ),
          Text(
            label,
            style: TextStyle(
              color: whiteColor,
              fontSize: size.height * 0.017,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          valueWidget,
        ],
      ),
    );
  }
}
