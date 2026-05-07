// dart format width=180

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/icon/apple.svg');

  /// File path: assets/icon/arrow.svg
  SvgGenImage get arrow => const SvgGenImage('assets/icon/arrow.svg');

  /// File path: assets/icon/arrowForward.svg
  SvgGenImage get arrowForward => const SvgGenImage('assets/icon/arrowForward.svg');

  /// File path: assets/icon/budgetIcon.svg
  SvgGenImage get budgetIcon => const SvgGenImage('assets/icon/budgetIcon.svg');

  /// File path: assets/icon/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icon/calendar.svg');

  /// File path: assets/icon/crossIcon.svg
  SvgGenImage get crossIcon => const SvgGenImage('assets/icon/crossIcon.svg');

  /// File path: assets/icon/dashboardIcon.svg
  SvgGenImage get dashboardIcon => const SvgGenImage('assets/icon/dashboardIcon.svg');

  /// File path: assets/icon/dollarIcon.svg
  SvgGenImage get dollarIcon => const SvgGenImage('assets/icon/dollarIcon.svg');

  /// File path: assets/icon/foodIcon.svg
  SvgGenImage get foodIcon => const SvgGenImage('assets/icon/foodIcon.svg');

  /// File path: assets/icon/googleIcon.svg
  SvgGenImage get googleIcon => const SvgGenImage('assets/icon/googleIcon.svg');

  /// File path: assets/icon/noteIcon.svg
  SvgGenImage get noteIcon => const SvgGenImage('assets/icon/noteIcon.svg');

  /// File path: assets/icon/otherIcon.svg
  SvgGenImage get otherIcon => const SvgGenImage('assets/icon/otherIcon.svg');

  /// File path: assets/icon/playIcon.svg
  SvgGenImage get playIcon => const SvgGenImage('assets/icon/playIcon.svg');

  /// File path: assets/icon/rightIcon.svg
  SvgGenImage get rightIcon => const SvgGenImage('assets/icon/rightIcon.svg');

  /// File path: assets/icon/shopIcon.svg
  SvgGenImage get shopIcon => const SvgGenImage('assets/icon/shopIcon.svg');

  /// File path: assets/icon/travelIcon.svg
  SvgGenImage get travelIcon => const SvgGenImage('assets/icon/travelIcon.svg');

  /// File path: assets/icon/trendsIcon.svg
  SvgGenImage get trendsIcon => const SvgGenImage('assets/icon/trendsIcon.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    apple,
    arrow,
    arrowForward,
    budgetIcon,
    calendar,
    crossIcon,
    dashboardIcon,
    dollarIcon,
    foodIcon,
    googleIcon,
    noteIcon,
    otherIcon,
    playIcon,
    rightIcon,
    shopIcon,
    travelIcon,
    trendsIcon,
  ];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/bruceLogo.png
  AssetGenImage get bruceLogo => const AssetGenImage('assets/image/bruceLogo.png');

  /// File path: assets/image/congoImg.png
  AssetGenImage get congoImg => const AssetGenImage('assets/image/congoImg.png');

  /// File path: assets/image/expenseLogo-removebg-preview.png
  AssetGenImage get expenseLogoRemovebgPreview => const AssetGenImage('assets/image/expenseLogo-removebg-preview.png');

  /// File path: assets/image/expenseLogo.png
  AssetGenImage get expenseLogo => const AssetGenImage('assets/image/expenseLogo.png');

  /// File path: assets/image/expenseLogoDuplicate.png
  AssetGenImage get expenseLogoDuplicate => const AssetGenImage('assets/image/expenseLogoDuplicate.png');

  /// File path: assets/image/expenseSplash.png
  AssetGenImage get expenseSplash => const AssetGenImage('assets/image/expenseSplash.png');

  /// File path: assets/image/expensesImg.png
  AssetGenImage get expensesImg => const AssetGenImage('assets/image/expensesImg.png');

  /// File path: assets/image/onboarding1.png
  AssetGenImage get onboarding1 => const AssetGenImage('assets/image/onboarding1.png');

  /// File path: assets/image/onboarding2.png
  AssetGenImage get onboarding2 => const AssetGenImage('assets/image/onboarding2.png');

  /// File path: assets/image/onboarding3.png
  AssetGenImage get onboarding3 => const AssetGenImage('assets/image/onboarding3.png');

  /// File path: assets/image/proPicImg.png
  AssetGenImage get proPicImg => const AssetGenImage('assets/image/proPicImg.png');

  /// File path: assets/image/trendsDataImg.png
  AssetGenImage get trendsDataImg => const AssetGenImage('assets/image/trendsDataImg.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bruceLogo,
    congoImg,
    expenseLogoRemovebgPreview,
    expenseLogo,
    expenseLogoDuplicate,
    expenseSplash,
    expensesImg,
    onboarding1,
    onboarding2,
    onboarding3,
    proPicImg,
    trendsDataImg,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImageGen image = $AssetsImageGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}, this.animation});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({required this.isAnimation, required this.duration, required this.frames});

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(_assetName, assetBundle: bundle, packageName: package);
    } else {
      loader = _svg.SvgAssetLoader(_assetName, assetBundle: bundle, packageName: package, theme: theme, colorMapper: colorMapper);
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
