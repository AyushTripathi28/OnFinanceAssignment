import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:onfinance/utils/constants.dart';
import 'package:onfinance/widgets/company_info_table_container.dart';

import '../gen/assets.gen.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.images.backgroundImage.path),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image(
                              height: 16,
                              image: AssetImage(Assets.icons.globeIcon.path),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Environment",
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                height: 1.3,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isBookmarked = !isBookmarked;
                                });
                              },
                              child: Image(
                                height: 18,
                                // width: 15,
                                image: isBookmarked
                                    ? AssetImage(
                                        Assets.icons.activeBookmarkIcon.path,
                                      )
                                    : AssetImage(
                                        Assets.icons.inactiveBookmarkIcon.path,
                                      ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Image(
                              height: 18,
                              // width: 15,
                              image: AssetImage(
                                Assets.icons.shareIcon.path,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Text(
                          "BlackRock, Mubadala to invest Rs 4,000 crore in Tata Power Renewable Energy",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 15,
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(7),
                            margin: const EdgeInsets.only(right: 6),
                            decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 12,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          Assets.images.tatamotorsIcon.path,
                                          fit: BoxFit.contain,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "ABBOTINDIA",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "+1.09%",
                                  style: TextStyle(
                                    color: greenColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(7),
                              margin: const EdgeInsets.only(left: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: purpleColor),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 12,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            Assets.images.nifty200Icon.path,
                                            fit: BoxFit.contain,
                                          )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "NIFTY 200",
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      RichText(
                        overflow: TextOverflow.fade,
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text: '30 minutes ago: ',
                            style:
                                TextStyle(color: darkGreyColor, fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'BlackRock has been in talks with Tata Power to invest a lumpsum amount of around 4,000 development  40 word summary here, quick brown fox jumps over the lazy dog. This is a test insight for mock up designs',
                                  style: TextStyle(
                                      color: greyColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      height: 1.4),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    })
                            ]),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        child: Column(
                          children: [
                            CompanyInfoTableContainer(
                              label: "Projected Market Impact",
                              icon: Assets.icons.marketImpactIcon.path,
                              rightWidget: Text(
                                'Medium',
                                style: TextStyle(
                                  color: yellowColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            CompanyInfoTableContainer(
                              label: "Investor Sentiment",
                              icon: Assets.icons.investorSentimentIcon.path,
                              rightWidget: Text(
                                'Bullish',
                                style: TextStyle(
                                  color: greenColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            CompanyInfoTableContainer(
                              label: "Market Movement",
                              icon: Assets.icons.marketMovementIcon.path,
                              rightWidget: Text(
                                '+2.75%',
                                style: TextStyle(
                                  color: greenColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            CompanyInfoTableContainer(
                              label: "Your Portfolio Exposure",
                              icon: Assets.icons.portfolioExposureIcon.path,
                              rightWidget: Text(
                                '15%',
                                style: TextStyle(
                                  color: lightBlueColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            CompanyInfoTableContainer(
                              label: "Company Sentiment",
                              icon: Assets.icons.companySentimentIcon.path,
                              rightWidget: Text(
                                'Excellent',
                                style: TextStyle(
                                  color: greenColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomButton(
                        onClick: () {},
                        label: "Analyze TATAPOWER",
                        icon: Image.asset(
                          Assets.icons.arrowForwardIcon.path,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ]),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
