import 'package:flutter/material.dart';

import '../../../../../data/model/ingredient_model.dart';
import '../../../../../data/share/text_theme.dart';

class ItemSearchWidget extends StatelessWidget {
  const ItemSearchWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final IngredientModel model;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        "${model.name}",
        style: safetyColorText(model.safety ?? 1, context),
      ),
      children: [
        ListTile(
          title: Text(
            'Mức độ an toàn: ${safetyToString(model.safety ?? 1)} ${emoticonsText(model.safety ?? 1)}️',
            style: textTheme(context).text16Bold.colorPrimaryBlack,
          ),
          subtitle: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Thông tin về chất: ️',
                style: textTheme(context).text16Bold.colorPrimaryBlack,
              ),
              TextSpan(
                text: model.description != null
                    ? '${model.description}️'
                    : 'Dữ liệu đang cập nhật...',
                style: textTheme(context).text16Spacing.colorPrimaryBlack,
              ),
            ]),
          ),
        ),
      ],
    );
  }
}