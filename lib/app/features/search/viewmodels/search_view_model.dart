import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

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
   List<IngredientModel> searchIngredienList = [];
  int? listTextSearch = 0;
  int? textResultSearch = 0;
  var showInfo = false;
  Map<String, double> dataSafetyMap = {
    "😱": 1,
    "😩": 1,
    "😐": 1,
    "😊": 1,
    "😘": 5,
  };


  int? get getTotalSearch => listTextSearch;
  int? get getTextResultSearch => textResultSearch;

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

  showOff(){
    showInfo= false;
    change(showInfo, status: RxStatus.success());
  }

  void searchEvent() {
    if (searchController.text.isEmpty) {
      getData();
    } else {
      searchGetData(convertStrIngredient(searchController.text));
    }
  }

  searchGetData(List<String> text) {
    List<IngredientModel> listTemp = [];
    for (int i = 0; i < ingredientList.length; i++) {
      for (int k = 0; k < text.length; k++) {
        if (ingredientList[i].name?.toLowerCase() ==
            text[k].trim().toLowerCase()) {
          listTemp.add(IngredientModel(
            name: ingredientList[i].name,
            function: ingredientList[i].function,
            safety: ingredientList[i].safety,
            source: ingredientList[i].source,
            otherName: ingredientList[i].otherName,
            description: ingredientList[i].description,
            id: ingredientList[i].id,
          ));
          break;
        }
      }
    }
    var sortList = listTemp..sort((a, b) => a.safety?? 1.compareTo(b.safety?? 1));

    var counter1 = sortList.where((element) => element.safety == 1).toList();
    var counter2 = sortList.where((element) => element.safety == 2).toList();
    var counter3 = sortList.where((element) => element.safety == 3).toList();
    var counter4 = sortList.where((element) => element.safety == 4).toList();
    var counter5 = sortList.where((element) => element.safety == 5).toList();
    if (searchController.text.isNotEmpty) {
      dataSafetyMap = {
        "😱": double.parse(counter1.length.toString()),
        "😩": double.parse(counter2.length.toString()),
        "😐": double.parse(counter3.length.toString()),
        "😊": double.parse(counter4.length.toString()),
        "😘": double.parse(counter5.length.toString()),
      };
    }
    searchIngredienList.clear();
    listTextSearch = text.length;
    textResultSearch = sortList.length;
    searchIngredienList.addAll(sortList);
    showInfo = true;
    change(searchIngredienList, status: RxStatus.success());
  }
}
