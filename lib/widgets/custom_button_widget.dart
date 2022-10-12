import 'package:flutter/material.dart';
import 'package:onfinance/gen/assets.gen.dart';
import 'package:onfinance/utils/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {Key? key, required this.onClick, required this.label, this.icon})
      : super(key: key);

  final VoidCallback onClick;
  final String label;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.only(bottom: 5),
        height: size.height * 0.053,
        width: double.infinity,
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
                fontSize: size.height * 0.02,
                color: whiteColor,
                fontWeight: FontWeight.w700,
                height: 1.5,
              ),
            ),
            // icon ?? Container(),
            Padding(
              padding: EdgeInsets.only(left: size.height * 0.01, top: 2),
              child: (icon ?? Container()),
            )
          ],
        )),
      ),
    );
  }
}
