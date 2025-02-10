/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Poppins-Regular.ttf
  String get poppinsRegular => 'assets/fonts/Poppins-Regular.ttf';

  /// List of all assets
  List<String> get values => [poppinsRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/airdrop.png
  AssetGenImage get airdrop => const AssetGenImage('assets/icons/airdrop.png');

  /// File path: assets/icons/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/icons/avatar.png');

  /// File path: assets/icons/btc.png
  AssetGenImage get btc => const AssetGenImage('assets/icons/btc.png');

  /// File path: assets/icons/candlestick.png
  AssetGenImage get candlestick =>
      const AssetGenImage('assets/icons/candlestick.png');

  /// File path: assets/icons/card.png
  AssetGenImage get card => const AssetGenImage('assets/icons/card.png');

  /// File path: assets/icons/exchange.png
  AssetGenImage get exchange =>
      const AssetGenImage('assets/icons/exchange.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/iconamoon_profile-fill.png
  AssetGenImage get iconamoonProfileFill =>
      const AssetGenImage('assets/icons/iconamoon_profile-fill.png');

  /// File path: assets/icons/increased.png
  AssetGenImage get increased =>
      const AssetGenImage('assets/icons/increased.png');

  /// File path: assets/icons/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/icons/logo.png');

  /// File path: assets/icons/market.png
  AssetGenImage get market => const AssetGenImage('assets/icons/market.png');

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/protect.png
  AssetGenImage get protect => const AssetGenImage('assets/icons/protect.png');

  /// File path: assets/icons/receive.png
  AssetGenImage get receive => const AssetGenImage('assets/icons/receive.png');

  /// File path: assets/icons/reset_email.png
  AssetGenImage get resetEmail =>
      const AssetGenImage('assets/icons/reset_email.png');

  /// File path: assets/icons/send.png
  AssetGenImage get send => const AssetGenImage('assets/icons/send.png');

  /// File path: assets/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/icons/settings.png');

  /// File path: assets/icons/trade.png
  AssetGenImage get trade => const AssetGenImage('assets/icons/trade.png');

  /// File path: assets/icons/wallet.png
  AssetGenImage get wallet => const AssetGenImage('assets/icons/wallet.png');

  /// File path: assets/icons/wallet_signin.png
  AssetGenImage get walletSignin =>
      const AssetGenImage('assets/icons/wallet_signin.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    airdrop,
    avatar,
    btc,
    candlestick,
    card,
    exchange,
    google,
    home,
    iconamoonProfileFill,
    increased,
    logo,
    market,
    notification,
    profile,
    protect,
    receive,
    resetEmail,
    send,
    settings,
    trade,
    wallet,
    walletSignin,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
