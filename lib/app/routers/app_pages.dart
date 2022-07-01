
import 'package:appcosmetic/app/bindings/search_binding.dart';
import 'package:appcosmetic/app/features/search/views/search_page.dart';
import 'package:get/get.dart';

import '../bindings/home_binding.dart';
import '../features/home/views/home_page.dart';
import 'app_routers.dart';

class AppPages {
  static const INITIAL = Routes.SEARCH;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.SEARCH,
      page: () => SearchPage(),
      binding: SearchBinding(),
    ),

  ];

}