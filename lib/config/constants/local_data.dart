import 'dart:ui';

import 'app_colors.dart';
import 'assets.dart';

List<SearchModel> listSearchCategory = [
  SearchModel(categoryName: "Jackets", listImgPaths: [
    Assets.images.winterJackets,
    Assets.images.bomber,
    Assets.images.windbrakers,
  ], listImgSubName: [
    "Winter Jackets",
    "Bombers",
    "Windbrakers"
  ]),
  SearchModel(categoryName: "Blouses", listImgPaths: [
    Assets.images.plaid,
    Assets.images.striped,
    Assets.images.shirt,
  ], listImgSubName: [
    "Plaid",
    "Striped",
    "Shirt"
  ]),
];

class SearchModel {
  SearchModel(
      {required this.categoryName,
      required this.listImgPaths,
      required this.listImgSubName});
  final String categoryName;
  final List<String> listImgPaths;
  final List<String> listImgSubName;
}

List<String> listPopularSearchs = [
  "#partylook",
  "#beach wibes",
  "#denim",
  "#pink jacket",
  "#caps",
  "#bloses",
  "#summer outfit",
];

class Product {
  Product({
    required this.size,
    required this.shoulder,
    required this.length,
    required this.sleeve,
    required this.bust,
    required this.cuff,
  });
  final String size;
  final double shoulder;
  final double length;
  final double sleeve;
  final double bust;
  final double cuff;
}

List<Product> products = [
  Product(
      size: 'XS', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
  Product(
      size: 'S', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
  Product(
      size: 'M', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
  Product(
      size: 'L', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
  Product(
      size: 'XL', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
];

Map<String, String> productDetails = {
  "Color":
      "The Silver Down Metallic Puffer Jacket is a composition of the exceptional quality parachute fabric. ",
  "Type":
      "The Silver Down Metallic Puffer Jacket is a composition of the exceptional quality parachute fabric. ",
  "Neckline":
      "The Silver Down Metallic Puffer Jacket is a composition of the exceptional quality parachute fabric. ",
  "Features":
      "The Silver Down Metallic Puffer Jacket is a composition of the exceptional quality parachute fabric. ",
};
final List<String> moreImges = [Assets.images.person2, Assets.images.person3];

final List<VideoModel> urls = [
  VideoModel(
    videoUrl: Assets.videos.video1,
    isImg: false,
    moreImgUrls: moreImges,
  ),
  VideoModel(
    videoUrl: Assets.videos.video2,
    isImg: false,
    moreImgUrls: moreImges,
  ),
  VideoModel(
    imgUrls: [Assets.images.img1, Assets.images.img2],
    isImg: true,
    moreImgUrls: moreImges,
  ),
  VideoModel(
    videoUrl: Assets.videos.video3,
    isImg: false,
    moreImgUrls: moreImges,
  ),
];

class VideoModel {
  VideoModel({
    this.videoUrl,
    this.imgUrls,
    required this.isImg,
    required this.moreImgUrls,
  });
  final List<String>? imgUrls;
  final String? videoUrl;
  final bool isImg;
  final List<String> moreImgUrls;
}
List<BagCartModel> listBagCarts = [
  BagCartModel(
      imgPath: Assets.images.redCoat,
      name: 'Red Coat',
      cost: 200,
      size: 'XS',
      color: AppColors.coatColor),
  BagCartModel(
      imgPath: Assets.images.sneakres,
      name: 'White sneakers',
      cost: 400,
      size: 'XS',
      color: AppColors.accentColor),
  BagCartModel(
      imgPath: Assets.images.pants,
      name: 'Black pants',
      cost: 300,
      size: 'XS',
      color: AppColors.accentColor),
  BagCartModel(
      imgPath: Assets.images.redCoat,
      name: 'Red Coat',
      cost: 200,
      size: 'XS',
      color: AppColors.coatColor),
  BagCartModel(
      imgPath: Assets.images.sneakres,
      name: 'Red Coat',
      cost: 200,
      size: 'XS',
      color: AppColors.accentColor),
];

class BagCartModel {
  BagCartModel({
    required this.imgPath,
    required this.name,
    required this.cost,
    required this.size,
    required this.color,
  });
  final String imgPath;
  final String name;
  final double cost;
  final String size;
  final Color color;
}