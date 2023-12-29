/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsLauncherIconGen {
  const $AssetsLauncherIconGen();

  /// File path: assets/launcher_icon/dark.png
  AssetGenImage get dark =>
      const AssetGenImage('assets/launcher_icon/dark.png');

  /// File path: assets/launcher_icon/light.png
  AssetGenImage get light =>
      const AssetGenImage('assets/launcher_icon/light.png');

  /// List of all assets
  List<AssetGenImage> get values => [dark, light];
}

class $AssetsThemesGen {
  const $AssetsThemesGen();

  /// File path: assets/themes/dark.json
  String get dark => 'assets/themes/dark.json';

  /// File path: assets/themes/light.json
  String get light => 'assets/themes/light.json';

  /// List of all assets
  List<String> get values => [dark, light];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-GB.json
  String get enGB => 'assets/translations/en-GB.json';

  /// File path: assets/translations/hr-HR.json
  String get hrHR => 'assets/translations/hr-HR.json';

  /// List of all assets
  List<String> get values => [enGB, hrHR];
}

class Assets {
  Assets._();

  static const $AssetsLauncherIconGen launcherIcon = $AssetsLauncherIconGen();
  static const $AssetsThemesGen themes = $AssetsThemesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
