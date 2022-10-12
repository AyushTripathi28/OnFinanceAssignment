import 'package:flutter/material.dart';
import 'package:onfinance/gen/assets.gen.dart';
import 'package:onfinance/utils/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.height = 46,
      this.width = double.infinity,
      required this.onClick,
      required this.label,
      this.icon})
      : super(key: key);
  final double height;
  final double width;
  final VoidCallback onClick;
  final String label;

  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.only(bottom: 5),
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(
                  Assets.images.bgBtnImage1.path,
                ),
                fit: BoxFit.fill)),
        child: Center(
            child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                color: whiteColor,
                fontWeight: FontWeight.w700,
                height: 1.5,
              ),
            ),
            // icon ?? Container(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 2),
              child: (icon ?? Container()),
            )
          ],
        )),
      ),
    );
  }
}
