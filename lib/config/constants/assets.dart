abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();

  // ignore: library_private_types_in_public_api

  // ignore: library_private_types_in_public_api
  static _Videos get videos => const _Videos();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get eye => "$basePath/eye.svg";

  String get flash => "$basePath/flash.svg";

  String get frame => "$basePath/frame.svg";

  String get notification => "$basePath/notification.svg";

  String get union => "$basePath/union.svg";

  String get filterSearch => "$basePath/filter_search.svg";

  String get claps => "$basePath/claps.svg";

  String get star => "$basePath/star.svg";

  String get send => "$basePath/send.svg";

  String get cricle => "$basePath/ciricle.svg";

  String get shoppingBag => "$basePath/shopping_bag.svg";

  String get shipping => "$basePath/ic_shipping.svg";
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get textBg => "$basePath/text_bg.jpg";

  String get text200 => "$basePath/200.png";

  String get person1 => "$basePath/person1.png";

  String get user => "$basePath/user.png";

  String get img1 => "$basePath/img1.jpg";

  String get img2 => "$basePath/img2.jpg";
}

class _Videos extends _AssetsHolder {
  const _Videos() : super('assets/videos');

  String get video1 => "$basePath/1.mp4";

  String get video2 => "$basePath/2.mp4";

  String get video3 => "$basePath/3.mp4";
}
