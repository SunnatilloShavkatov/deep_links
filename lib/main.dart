import 'package:deep_links/controllers/deep_link.dart';
import 'package:deep_links/core/constants/app_theme.dart';
import 'package:deep_links/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/main_binding.dart';

DeepLink _bloc = DeepLink();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    _bloc.state.listen((event) {
      print(event.toString() + 'TTT');
      if (event
              .toString()
              .replaceAll('https://mobile.deeplink.uz/channel', '') ==
          '/home')
        Get.toNamed(Routes.INITIAL, arguments: event.toString());
      else if (event
              .toString()
              .replaceAll('https://mobile.deeplink.uz/channel', '') ==
          '/event') {
        print(event
                .toString()
                .replaceAll('https://mobile.deeplink.uz/channel', '') +
            'YYY');
        Get.toNamed(Routes.EVENT, arguments: event.toString());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      theme: appThemeData,
      defaultTransition: Transition.rightToLeft,
      getPages: AppPages.pages,
      initialRoute: Routes.INITIAL,
    );
  }
}
