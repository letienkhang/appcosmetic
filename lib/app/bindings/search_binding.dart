import 'package:appcosmetic/app/features/search/viewmodels/search_view_model.dart';
import 'package:get/get.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchViewModel>(() => SearchViewModel());
  }
}