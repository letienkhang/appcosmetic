import 'package:flutter/cupertino.dart';

import '../../../../data/json/ingredient.dart';
import '../../../../data/model/ingredient_model.dart';
import '../../../base/base_viewmodel.dart';

class SearchViewModel extends BaseViewModel {
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  TextEditingController searchController = TextEditingController();
  List<IngredientModel> ingredientList = [];
  Map<String, double> dataSafetyMap = {
    "😱": 1,
    "😩": 1,
    "😐": 1,
    "😊": 1,
    "😘": 5,
  };

  getData() {
    //file from Json and reversed
    var list = ingredient.reversed.toList();

    for (var i = 0; i < list.length; i++) {
      ingredientList.add(IngredientModel(
        name: list[i]["name"],
        function: list[i]["function"],
        safety: list[i]["safety"],
        source: list[i]["source"],
        otherName: list[i]["otherName"],
        description: list[i]["description"],
        id: list[i]["id"],
      ));
    }
    print("$ingredientList");
    update();
  }

  List<String> convertStrIngredient(String data) {
    var newString0 = data.replaceAll('|', ',').trim();
    var newString1 = newString0.replaceAll('_', ',').trim();
    var newString2 = newString1.replaceAll(';', ',').trim();
    var newString3 = newString2.replaceAll('/', ',').trim();
    var newString4 = newString3.replaceAll('.', ',').trim();
    var newString5 = newString4.replaceAll('(', ',').trim();
    var newString6 = newString5.replaceAll(')', '').trim();
    return newString6.toLowerCase().split(",");
  }

}
