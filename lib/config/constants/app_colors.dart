import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static const Color black = Color(0xFF000000);
  static const Color cartBgColor = Color(0xFF1E1E1E);
  static const Color grey = Color(0xFFAFAFAF);
  static const Color accentColor = Colors.white;
  static const Color borderColor = Colors.white38;
  static const Color indicatorColor = Color(0xff5387FF);
  static const Color textColor1 = Color(0xff9391A8);
  static const Color textColor2 = Color(0xffCBCAC9);
  static const Color filterBgColor = Color(0xff555962);
  static const Color buttonColor = Color(0xffE9FF8F);
  static const Color blue = Color(0xff3678BD);
  static const Color borderColor3 = Color(0xff5E5E5E);
  static const Color buttonColor2 = Color(0xff20201F);
  static const Color coatColor = Color(0xffFF2E00);
  static const Color bagBottomSheetColor = Color(0xff0B0A0A);
  static const Color badgeColor = Color(0xffFF4746);
  static const Color removeButtonColor = Color(0xffFF5151);
  static  Color searchColor = const Color(0xffFFFFFF).withOpacity(.08);

  static Color dividerColor = const Color(0xffB5ADAD).withOpacity(.7);
  static Color borderColor2 = const Color(0xffFFF5F5).withOpacity(.31);

  static List<Color> cartGrColors = [
    const Color(0xff383E4F),
    const Color(0xff383D4D),
    const Color(0xff5A6278),
    const Color(0xff1A1E2A),
  ];
  static List<Color> filterColors = [
    const Color(0xffF7CD67),
    const Color(0xff8ACD95),
    const Color(0xffCEA9F9),
    const Color(0xffFBA173),
    const Color(0xff9E6CC3),
    const Color(0xffFEF8B3),
    const Color(0xffB4B4B4),
  ];

  static Gradients gradients = const Gradients();

  static getPrimaryColor(int num) => Color(int.parse('0x${num}00845A'));

  static PrimaryColor primaryLight = const PrimaryColor(
    0xFF00845A,
    <int, Color>{
      100: Color(0xFF00845A),
      50: Color(0xFFF2FDF5),
    },
  );

  static BaseColor baseLight = BaseColor(
    0xFF16A249,
    <int, Color>{
      100: Colors.white,
      50: const Color(0xFFF4F4F4),
      80: Colors.white.withOpacity(.8),
      40: Colors.white.withOpacity(.4),
      20: Colors.white.withOpacity(.2),
      60: Colors.white.withOpacity(.6),
    },
  );

  static TextColor textColor = TextColor();
}

class BaseColor extends ColorSwatch<int> {
  const BaseColor(super.primary, super.swatch);

  Color get shade100 => this[100]!;

  Color get shade50 => this[50]!;

  Color get shade40 => this[40]!;

  Color get shade80 => this[80]!;

  Color get shade20 => this[20]!;

  Color get shade60 => this[60]!;
}

class PrimaryColor extends ColorSwatch<int> {
  const PrimaryColor(super.primary, super.swatch);

  Color get shade100 => this[100]!;

  Color get shade50 => this[50]!;
}

class TextColor extends ColorSwatch<int> {
  TextColor()
      : super(
          0xFF332f2e,
          <int, Color>{
            1: const Color(0xFFFFFFFF),
            2: const Color(0xFF4C4C4F),
            3: const Color(0xffe8e8e8),
            4: const Color(0xffCAF99C),
            26: Colors.black26,
            5: const Color(0xffF58965),
            6: const Color(0xff9D9898),
            7: const Color(0xff1D1D1D).withOpacity(.6),
          },
        );

  Color get shade1 => this[1]!;
  Color get shade2 => this[2]!;
  Color get shade3 => this[3]!;
  Color get shade4 => this[4]!;
  Color get shade26 => this[26]!;
  Color get shade5 => this[5]!;
  Color get shade6 => this[6]!;
  Color get shade7 => this[7]!;
}

class Gradients {
  const Gradients();

  LinearGradient get detailsGradient => LinearGradient(
        begin: Alignment.topRight,
        colors: [
          const Color(0xFF000000).withOpacity(.8),
          const Color(0xFF1A1A1A).withOpacity(.614),
        ],
      );

  LinearGradient get welcome => LinearGradient(colors: [
        const Color(0xFF000000).withOpacity(0),
        const Color(0xFF000000),
      ], begin: Alignment.topRight);

  LinearGradient get tabbarGr => LinearGradient(colors: [
        const Color(0xFFFFFFFF).withOpacity(.2),
        const Color(0xFFFFFFFF).withOpacity(.2),
      ], begin: Alignment.topRight);

  LinearGradient get trendingGr => LinearGradient(colors: [
        const Color(0xFF7264FF).withOpacity(.7),
        const Color(0xFF7264FF),
      ], begin: Alignment.bottomRight);
}
