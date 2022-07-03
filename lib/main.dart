
import 'package:appcosmetic/data/share/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routers/app_pages.dart';
import 'generated/locales.g.dart';
import 'translations/language_service.dart';

void main() {
  initServices();
  runApp(const BaseApp());
}

class BaseApp extends StatelessWidget {
  const BaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MVVM Base Source',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      translationsKeys: AppTranslation.translations,
      locale: LanguageService.to.locale, // locale
      fallbackLocale: Locale("en", "US"),
      theme: ThemeData(
        primaryColor: KanColors.primaryColor,
        primaryColorDark: KanColors.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
      ),// false back
    );
  }
}

Future<void> initServices() async {
  print('starting services ...');
  await Get.putAsync(() => LanguageService().init());
  print('All services started...');
}
