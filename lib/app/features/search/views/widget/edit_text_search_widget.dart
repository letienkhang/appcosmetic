import 'dart:ui';
import 'package:appcosmetic/data/share/colors.dart';
import 'package:appcosmetic/data/share/dimes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_cli/core/locales.g.dart';

import '../../../../../data/share/constant.dart';
import '../../../../../data/share/text_theme.dart';

class EditTextSearchWidget extends StatelessWidget {
  EditTextSearchWidget({Key? key, required this.searchTextController, required this.onTab, required this.clear})
      : super(key: key);
  TextEditingController searchTextController = TextEditingController();
  final Function() onTab;
  final Function() clear;

  @override
  Widget build(BuildContext context) {
    return body(context);
  }

  body(BuildContext context) {
    return TextFormField(
        controller: searchTextController,
        enableInteractiveSelection: true,
        maxLines: Constant.maxLine,
        minLines: Constant.minLine,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.spacing10),
              borderSide: const BorderSide(
                  color: KanColors.primaryColor, width: Dimens.spacing2)),
          border: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: KanColors.primaryColor, width: Dimens.size5)),
          labelStyle: textTheme(context).text16.colorPrimary,
          helperStyle: textTheme(context).text13.colorPrimaryBlack,
          hintStyle: textTheme(context).text15.colorGray,
          labelText: 'Thành phần',
          helperText:
              '- Để phân cách các chất, bạn có thể nhập các ký tự ; | _ \n'
              '- Không cần phân biệt chữ hoa chữ thường.',
          hintText:
              'Bạn cũng có thể copy paste một danh sách chất ở một trang mạng nào đó và app sẽ thử dự đoán các chất trong danh sách đó',
          prefixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              FocusScope.of(context).unfocus();
              onTab();
            },
          ),
          suffixIcon: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.clear_sharp),
            onPressed: () {
              FocusScope.of(context).unfocus();
              searchTextController.clear();
              clear();
            },
          ),
        ));
  }
}
