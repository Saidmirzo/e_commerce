import 'dart:ui';

import 'app_colors.dart';
import 'assets.dart';

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

List<String> textButtons = ['XS', 'S', 'M'];
List<Color> colors = [
  AppColors.black,
  AppColors.accentColor,
  AppColors.blue,
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
