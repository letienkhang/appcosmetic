import 'package:flutter/material.dart';

import '../dimes.dart';
import '../text_theme.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.string}) : super(key: key);
  final String? string;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimens.size15, bottom: Dimens.size5),
      child: Text(
        string ?? "",
        style: textTheme(context).text18Bold.colorPrimaryBlack,
      ),
    );
  }
}
