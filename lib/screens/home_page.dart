import 'package:flutter/material.dart';
import 'package:onfinance/utils/constants.dart';
import 'package:onfinance/widgets/company_info_listitem_widget.dart';
import '../gen/assets.gen.dart';
import '../widgets/custom_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(size.height * 0.013),
            decoration: BoxDecoration(
              color: blueColor,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.height * 0.02,
                      vertical: size.height * 0.025),
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
                            height: size.height * 0.02,
                            image: AssetImage(Assets.icons.globeIcon.path),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Environment",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: size.height * 0.018,
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
                              height: size.height * 0.023,
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
                          SizedBox(
                            width: size.height * 0.038,
                          ),
                          Image(
                            height: size.height * 0.023,
                            // width: 15,
                            image: AssetImage(
                              Assets.icons.shareIcon.path,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.055,
                      ),
                      Text(
                        "BlackRock, Mubadala to invest Rs 4,000 crore in Tata Power Renewable Energy",
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: size.height * 0.025,
                          fontWeight: FontWeight.w700,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.height * 0.015,
                      vertical: size.height * 0.015),
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
                                radius: size.height * 0.015,
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          size.height * 0.013),
                                      child: Image.asset(
                                        Assets.images.tatamotorsIcon.path,
                                        fit: BoxFit.contain,
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: size.height * 0.01,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "ABBOTINDIA",
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: size.height * 0.0145,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.height * 0.01,
                              ),
                              Text(
                                "+1.09%",
                                style: TextStyle(
                                  color: greenColor,
                                  fontSize: size.height * 0.0145,
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
                                  radius: size.height * 0.015,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            size.height * 0.013),
                                        child: Image.asset(
                                          Assets.images.nifty200Icon.path,
                                          fit: BoxFit.contain,
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: size.height * 0.01,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "NIFTY 200",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: size.height * 0.0145,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.height * 0.01,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.035,
                    ),
                    RichText(
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                          text: '30 minutes ago: ',
                          style: TextStyle(
                              color: darkGreyColor,
                              fontSize: size.height * 0.015),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'BlackRock has been in talks with Tata Power to invest a lumpsum amount of around 4,000 development  40 word summary here, quick brown fox jumps over the lazy dog. This is a test insight for mock up designs',
                              style: TextStyle(
                                  color: greyColor,
                                  fontSize: size.height * 0.015,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const CompanyInfoList(),
                    SizedBox(
                      height: size.height * 0.019,
                    ),
                    CustomButtonWidget(
                      onClick: () {},
                      label: "Analyze TATAPOWER",
                      icon: Image.asset(
                        Assets.icons.arrowForwardIcon.path,
                        height: size.height * 0.025,
                        width: size.height * 0.025,
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CompanyInfoList extends StatelessWidget {
  const CompanyInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        CompanyInfoListItemWidget(
          label: "Projected Market Impact",
          icon: Assets.icons.marketImpactIcon.path,
          valueWidget: Text(
            'Medium',
            style: TextStyle(
              color: yellowColor,
              fontSize: size.height * 0.018,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        CompanyInfoListItemWidget(
          label: "Investor Sentiment",
          icon: Assets.icons.investorSentimentIcon.path,
          valueWidget: Text(
            'Bullish',
            style: TextStyle(
              color: greenColor,
              fontSize: size.height * 0.018,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        CompanyInfoListItemWidget(
          label: "Market Movement",
          icon: Assets.icons.marketMovementIcon.path,
          valueWidget: Text(
            '+2.75%',
            style: TextStyle(
              color: greenColor,
              fontSize: size.height * 0.018,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        CompanyInfoListItemWidget(
          label: "Your Portfolio Exposure",
          icon: Assets.icons.portfolioExposureIcon.path,
          valueWidget: Text(
            '15%',
            style: TextStyle(
              color: lightBlueColor,
              fontSize: size.height * 0.018,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        CompanyInfoListItemWidget(
          label: "Company Sentiment",
          icon: Assets.icons.companySentimentIcon.path,
          valueWidget: Text(
            'Excellent',
            style: TextStyle(
              color: greenColor,
              fontSize: size.height * 0.018,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
