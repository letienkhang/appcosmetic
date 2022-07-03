import 'package:flutter/material.dart';

import '../../../../../data/share/colors.dart';
import '../../../../../data/share/dimes.dart';
import '../../../../../data/share/text_theme.dart';

class NoResultIngredient extends StatelessWidget {
  const NoResultIngredient({Key? key, this.total, this.totalResult})
      : super(key: key);
  final int? total;
  final int? totalResult;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: Dimens.spacing8,
          left: Dimens.spacing8,
          right: Dimens.spacing8,
          bottom: Dimens.spacing8),
      decoration: BoxDecoration(
        border:
            Border.all(color: KanColors.primaryColor, width: Dimens.spacing1),
        borderRadius: const BorderRadius.all(Radius.circular(Dimens.spacing10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Tổng các chất không tìm thấy:",
                  style: textTheme(context).text14Bold.colorPrimaryBlack,
                ),
                TextSpan(
                  text: " ${(total ?? 0) - (totalResult ?? 0)}",
                  style: textTheme(context).text14Bold.colorPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
