import 'package:appcosmetic/app/features/search/viewmodels/search_view_model.dart';
import 'package:appcosmetic/app/features/search/views/widget/edit_text_search_widget.dart';
import 'package:appcosmetic/data/share/dimes.dart';
import 'package:appcosmetic/data/share/widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/model/ingredient_model.dart';
import '../../../../data/share/text_theme.dart';
import '../../../../data/share/widget/app_error.dart';
import 'widget/Item_search_widget.dart';
import 'widget/no_result_ingredient_widget.dart';
import 'widget/result_ingredient_widget.dart';

class SearchPage extends GetWidget<SearchViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: Dimens.size20,
              right: Dimens.size20,
              top: Dimens.size20,
              bottom: Dimens.size20),
          child: ListView(
            children: [
              const SizedBox(
                height: Dimens.spacing7,
              ),
              EditTextSearchWidget(
                searchTextController: controller.searchController,
                onTab: () {
                  controller.searchEvent();
                },
                clear: () {
                  controller.showOff();
                },
              ),
              const TitleWidget(string: "Kết quả:"),
              const SizedBox(
                height: Dimens.spacing7,
              ),
              _uiCheckNoResultIngredient(),
              const SizedBox(
                height: Dimens.spacing10,
              ),
              _uiCheckResultIngredient(),
              const SizedBox(
                height: Dimens.spacing10,
              ),
              _uiCheckData(),
              const SizedBox(
                height: Dimens.spacing10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _uiCheckNoResultIngredient() {
    return controller.obx(
      (state) => Visibility(
        visible: controller.showInfo,
        child: NoResultIngredient(
          total: controller.getTotalSearch,
          totalResult: controller.getTextResultSearch,
        ),
      ),
      onLoading: const Center(
        child: SizedBox(),
      ),
    );
  }

  _uiCheckResultIngredient() {
    return controller.obx(
      (state) => Visibility(
        visible: controller.showInfo && controller.getTextResultSearch != 0,
        child: ResultIngredient(
          total: controller.getTotalSearch,
          totalResult: controller.getTextResultSearch,
          dataMap: controller.dataSafetyMap,
        ),
      ),
      onLoading: const Center(
        child: SizedBox(),
      ),
    );
  }

  _uiCheckData() {
    return controller.obx(
      (state) => Visibility(
        visible: controller.showInfo,
        child: _uiList(),
      ),
      onEmpty: const Text('No data found'),
      onError: (error) => AppError(
        errortxt: error ?? "",
      ),
      onLoading: const Center(
        child: SizedBox(),
      ),
    );
  }

  _uiList() {
    return ListView.builder(
      reverse: true,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: controller.searchIngredienList.length,
      itemBuilder: (context, index) {
        return ItemSearchWidget(
          model: controller.searchIngredienList[index],
        );
      },
    );
  }
}

