import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimes.dart';

const FontFamily = "Lora";

class TextSizes {
  static const small = 11.0;
  static const caption = 12.0;
  static const subText = 14.0;
  static const body = 17.0;
  static const heading4 = 15.0;
  static const heading3 = 17.0;
  static const heading2 = 22.0;
  static const heading1 = 34.0;
  static const heading5 = 24.0;
  static const text10 = 10.0;
  static const text12 = 12.0;
  static const text13 = 13.0;
  static const text14 = 14.0;
  static const text15 = 15.0;
  static const text16 = 16.0;
  static const text17 = 17.0;
  static const text18 = 18.0;
  static const text19 = 19.0;
  static const text20 = 20.0;
  static const text21 = 21.0;
  static const text22 = 22.0;
  static const text23 = 23.0;
  static const text24 = 24.0;
  static const text25 = 25.0;
  static const text26 = 26.0;
  static const text27 = 27.0;
  static const text28 = 28.0;
  static const text29 = 29.0;
  static const text30 = 30.0;
  static const heading6 = 20.0;
  static const primaryButton = 18.0;
}

extension TextThemeExt on TextTheme {
  TextStyle get small => TextStyle(fontSize: TextSizes.small, fontWeight: FontWeight.normal, fontFamily: FontFamily);

  TextStyle get text12withUnderline => TextStyle(fontSize: TextSizes.text12, fontWeight: FontWeight.normal, decoration: TextDecoration.underline);

  TextStyle get heading3 => TextStyle(fontSize: TextSizes.heading3, fontWeight: FontWeight.normal, fontFamily: FontFamily);

  TextStyle get heading4 => TextStyle(fontSize: TextSizes.heading4, fontWeight: FontWeight.normal, fontFamily: FontFamily);

  TextStyle get screenTitle => TextStyle(fontSize: TextSizes.text18, fontWeight: FontWeight.normal, fontFamily: FontFamily);

  TextStyle get text10 => TextStyle(fontSize: TextSizes.text10, fontWeight: FontWeight.normal, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text12 => TextStyle(fontSize: TextSizes.text12, fontWeight: FontWeight.normal, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text12Bold => TextStyle(fontSize: TextSizes.text12, fontWeight: FontWeight.bold, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text13 => TextStyle(fontSize: TextSizes.text13, fontWeight: FontWeight.normal, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text13Bold => TextStyle(fontSize: TextSizes.text13, fontWeight: FontWeight.bold, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text14Normal => TextStyle(fontSize: TextSizes.text14, fontWeight: FontWeight.normal, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text14NormalHeight => TextStyle(fontSize: TextSizes.text14, fontWeight: FontWeight.normal, fontFamily: FontFamily, height: Dimens.spacing1, letterSpacing: Dimens.spacingText);

  TextStyle get text14Bold => TextStyle(fontSize: TextSizes.text14, fontWeight: FontWeight.bold, fontFamily: FontFamily, decoration: TextDecoration.none, letterSpacing: Dimens.spacingText);

  TextStyle get text15 => TextStyle(fontSize: TextSizes.text15, fontWeight: FontWeight.normal, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text15Bold => TextStyle(fontSize: TextSizes.text15, fontWeight: FontWeight.bold, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text16 => TextStyle(fontSize: TextSizes.text16, fontWeight: FontWeight.normal, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text16Bold => TextStyle(fontSize: TextSizes.text16, fontWeight: FontWeight.bold, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text16BoldUpdate => TextStyle(fontSize: TextSizes.text16, fontWeight: FontWeight.bold, fontFamily: FontFamily, height: Dimens.spacing1, letterSpacing: 1.5);

  TextStyle get text16Spacing => TextStyle(fontSize: TextSizes.text16, fontWeight: FontWeight.normal, fontFamily: FontFamily, height: Dimens.spacing1, letterSpacing: Dimens.spacingText);

  TextStyle get text18Bold => TextStyle(fontSize: TextSizes.text18, fontWeight: FontWeight.bold, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text18 => TextStyle(fontSize: TextSizes.text18, fontWeight: FontWeight.normal, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text20Bold => TextStyle(fontSize: TextSizes.text20, fontWeight: FontWeight.bold, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text24 => TextStyle(fontSize: TextSizes.text24, fontWeight: FontWeight.normal, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text24Bold => TextStyle(fontSize: TextSizes.text24, fontWeight: FontWeight.bold, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text26 => TextStyle(fontSize: TextSizes.text26, fontWeight: FontWeight.normal, fontFamily: FontFamily, letterSpacing: Dimens.spacingText);

  TextStyle get text28Normal => TextStyle(fontSize: TextSizes.text28, fontWeight: FontWeight.normal, letterSpacing: Dimens.spacingText);

  TextStyle get text28Bold => TextStyle(fontSize: TextSizes.text28, fontWeight: FontWeight.bold, letterSpacing: Dimens.spacingText);

  TextStyle? get body => this.bodyText1;

  TextStyle? get subText => this.subtitle1;

  TextStyle? get buttonSmall => this.headline4;

  TextStyle? get buttonLarge => this.headline3;
}

extension TextStyleExt on TextStyle {
  TextStyle get light => this.copyWith(fontWeight: FontWeight.w300);

  TextStyle get bold => this.copyWith(fontWeight: FontWeight.bold);

  TextStyle get medium => this.copyWith(fontWeight: FontWeight.w500);

  TextStyle get semiBold => this.copyWith(fontWeight: FontWeight.w600);

  TextStyle get captionNormal => this.copyWith(fontWeight: FontWeight.normal);

  //height style
  TextStyle get height30Per => this.copyWith(height: 1.3);

  TextStyle get height20Per => this.copyWith(height: 1.2);

  // colors
  TextStyle get colorPrimary => this.copyWith(color: KanColors.primaryColor);

  TextStyle get colorPrimaryBlack => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorDart => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorGray => this.copyWith(color: KanColors.inActiveColor);

  TextStyle get colorHint => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorGrayTime => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorWhite => this.copyWith(color: KanColors.whiteColor);

  TextStyle get colorTable => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorViolet => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorBlack4B => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorRed => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorBlue => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorButtonSmall => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorSuccess => this.copyWith(color: KanColors.blackColor);

  TextStyle get colorError => this.copyWith(color: KanColors.errorColor);

  TextStyle get textValue1 => this.copyWith(color: KanColors.primaryColorValue1);
  TextStyle get textValue2 => this.copyWith(color: KanColors.primaryColorValue2);
  TextStyle get textValue3 => this.copyWith(color: KanColors.primaryColorValue3);
  TextStyle get textValue4 => this.copyWith(color: KanColors.primaryColorValue4);
  TextStyle get textValue5 => this.copyWith(color: KanColors.primaryColorValue5);
}

TextTheme createTextTheme() => TextTheme(
    subtitle1: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.normal, fontSize: TextSizes.subText),
    subtitle2: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.bold, fontSize: TextSizes.subText),
    caption: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.bold, fontSize: TextSizes.caption),
    bodyText1: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.normal, fontSize: TextSizes.body),
    bodyText2: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.bold, fontSize: TextSizes.body),
    headline6: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.normal, fontSize: TextSizes.heading2),
    headline5: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.bold, fontSize: TextSizes.heading5),
    headline4: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.bold, fontSize: TextSizes.heading4),
    headline3: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.w600, fontSize: TextSizes.heading3),
    headline2: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.w600, fontSize: TextSizes.heading2),
    headline1: TextStyle(fontFamily: FontFamily, fontWeight: FontWeight.bold, fontSize: TextSizes.heading1));

TextTheme textTheme(BuildContext context) {
  return Theme.of(context).textTheme;
}

TextTheme primaryTextTheme(BuildContext context) {
  return Theme.of(context).primaryTextTheme;
}

TextStyle safetyColorText(int number, BuildContext context) {
  switch (number) {
    case 1:
      return textTheme(context).text16Bold.textValue1;
      break;
    case 2:
      return textTheme(context).text16Bold.textValue2;
      break;
    case 3:
      return textTheme(context).text16Bold.textValue3;
      break;
    case 4:
      return textTheme(context).text16Bold.textValue4;
      break;
    case 5:
      return textTheme(context).text16Bold.textValue5;
      break;
    default:
      return textTheme(context).text16Bold.textValue5;
  }

}

String safetyToString(int number) {
  switch (number) {
    case 1:
      return 'Dễ kích ứng với da';
      break;
    case 2:
      return 'Dễ kích ứng với da';
      break;
    case 3:
      return 'Kích ứng với da';
      break;
    case 4:
      return 'An toàn với da';
      break;
    case 5:
      return 'An toàn với da';
      break;
    default:
      return 'Chưa xác định';
  }
}

String emoticonsText(int number) {
  switch (number) {
    case 1:
      return ' 😱';
      break;
    case 2:
      return ' 😩';
      break;
    case 3:
      return ' 😐';
      break;
    case 4:
      return ' 😊';
      break;
    case 5:
      return ' 😘';
      break;
    default:
      return ' 😘';
  }
}
