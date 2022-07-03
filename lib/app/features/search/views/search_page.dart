import 'package:appcosmetic/app/features/search/viewmodels/search_view_model.dart';
import 'package:appcosmetic/app/features/search/views/widget/edit_text_search_widget.dart';
import 'package:appcosmetic/data/share/dimes.dart';
import 'package:appcosmetic/data/share/widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/no_result_ingredient_widget.dart';
import 'widget/result_ingredient_widget.dart';

class SearchPage extends GetWidget<SearchViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: Dimens.size20, right: Dimens.size20, top: Dimens.size16),
          child: ListView(
            children: [
              EditTextSearchWidget(
                searchTextController: controller.searchController,
              ),
              const TitleWidget(string: "Kết quả:"),
              const SizedBox(
                height: Dimens.spacing7,
              ),
              const NoResultIngredient(total: 10, totalResult: 7),
              const SizedBox(
                height: Dimens.spacing10,
              ),
               ResultIngredient(total: 10, totalResult: 7, dataMap: controller.dataSafetyMap,)
            ],
          ),
        ),
      ),
    );
  }
}
