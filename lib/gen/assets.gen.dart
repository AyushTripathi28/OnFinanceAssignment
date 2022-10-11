/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/active_bookmark_icon.png
  AssetGenImage get activeBookmarkIcon =>
      const AssetGenImage('assets/icons/active_bookmark_icon.png');

  /// File path: assets/icons/arrow_forward_icon.png
  AssetGenImage get arrowForwardIcon =>
      const AssetGenImage('assets/icons/arrow_forward_icon.png');

  $AssetsIconsBottomnavbarGen get bottomnavbar =>
      const $AssetsIconsBottomnavbarGen();

  /// File path: assets/icons/company_sentiment_icon.png
  AssetGenImage get companySentimentIcon =>
      const AssetGenImage('assets/icons/company_sentiment_icon.png');

  /// File path: assets/icons/globe_icon.png
  AssetGenImage get globeIcon =>
      const AssetGenImage('assets/icons/globe_icon.png');

  /// File path: assets/icons/inactive_bookmark_icon.png
  AssetGenImage get inactiveBookmarkIcon =>
      const AssetGenImage('assets/icons/inactive_bookmark_icon.png');

  /// File path: assets/icons/investor_sentiment_icon.png
  AssetGenImage get investorSentimentIcon =>
      const AssetGenImage('assets/icons/investor_sentiment_icon.png');

  /// File path: assets/icons/market_impact_icon.png
  AssetGenImage get marketImpactIcon =>
      const AssetGenImage('assets/icons/market_impact_icon.png');

  /// File path: assets/icons/market_movement_icon.png
  AssetGenImage get marketMovementIcon =>
      const AssetGenImage('assets/icons/market_movement_icon.png');

  /// File path: assets/icons/portfolio_exposure_icon.png
  AssetGenImage get portfolioExposureIcon =>
      const AssetGenImage('assets/icons/portfolio_exposure_icon.png');

  /// File path: assets/icons/share_icon.png
  AssetGenImage get shareIcon =>
      const AssetGenImage('assets/icons/share_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        activeBookmarkIcon,
        arrowForwardIcon,
        companySentimentIcon,
        globeIcon,
        inactiveBookmarkIcon,
        investorSentimentIcon,
        marketImpactIcon,
        marketMovementIcon,
        portfolioExposureIcon,
        shareIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background_image.png
  AssetGenImage get backgroundImage =>
      const AssetGenImage('assets/images/background_image.png');

  /// File path: assets/images/bg_btn_image.png
  AssetGenImage get bgBtnImage =>
      const AssetGenImage('assets/images/bg_btn_image.png');

  /// File path: assets/images/bg_btn_image1.png
  AssetGenImage get bgBtnImage1 =>
      const AssetGenImage('assets/images/bg_btn_image1.png');

  /// File path: assets/images/nifty200_icon.png
  AssetGenImage get nifty200Icon =>
      const AssetGenImage('assets/images/nifty200_icon.png');

  /// File path: assets/images/nifty200_icon1.png
  AssetGenImage get nifty200Icon1 =>
      const AssetGenImage('assets/images/nifty200_icon1.png');

  /// File path: assets/images/person.png
  AssetGenImage get person => const AssetGenImage('assets/images/person.png');

  /// File path: assets/images/tatamotors_icon.png
  AssetGenImage get tatamotorsIcon =>
      const AssetGenImage('assets/images/tatamotors_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        backgroundImage,
        bgBtnImage,
        bgBtnImage1,
        nifty200Icon,
        nifty200Icon1,
        person,
        tatamotorsIcon
      ];
}

class $AssetsIconsBottomnavbarGen {
  const $AssetsIconsBottomnavbarGen();

  /// File path: assets/icons/bottomnavbar/alerts_active_icon.png
  AssetGenImage get alertsActiveIcon =>
      const AssetGenImage('assets/icons/bottomnavbar/alerts_active_icon.png');

  /// File path: assets/icons/bottomnavbar/alerts_inactive_icon.png
  AssetGenImage get alertsInactiveIcon =>
      const AssetGenImage('assets/icons/bottomnavbar/alerts_inactive_icon.png');

  /// File path: assets/icons/bottomnavbar/chart_active_icon.png
  AssetGenImage get chartActiveIcon =>
      const AssetGenImage('assets/icons/bottomnavbar/chart_active_icon.png');

  /// File path: assets/icons/bottomnavbar/chart_inactive_icon.png
  AssetGenImage get chartInactiveIcon =>
      const AssetGenImage('assets/icons/bottomnavbar/chart_inactive_icon.png');

  /// File path: assets/icons/bottomnavbar/explore_active_icon.png
  AssetGenImage get exploreActiveIcon =>
      const AssetGenImage('assets/icons/bottomnavbar/explore_active_icon.png');

  /// File path: assets/icons/bottomnavbar/explore_inactive_icon.png
  AssetGenImage get exploreInactiveIcon => const AssetGenImage(
      'assets/icons/bottomnavbar/explore_inactive_icon.png');

  /// File path: assets/icons/bottomnavbar/home_active_icon.png
  AssetGenImage get homeActiveIcon =>
      const AssetGenImage('assets/icons/bottomnavbar/home_active_icon.png');

  /// File path: assets/icons/bottomnavbar/home_inactive_icon.png
  AssetGenImage get homeInactiveIcon =>
      const AssetGenImage('assets/icons/bottomnavbar/home_inactive_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        alertsActiveIcon,
        alertsInactiveIcon,
        chartActiveIcon,
        chartInactiveIcon,
        exploreActiveIcon,
        exploreInactiveIcon,
        homeActiveIcon,
        homeInactiveIcon
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
