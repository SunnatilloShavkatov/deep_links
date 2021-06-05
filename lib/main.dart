import 'package:deep_links/controllers/deep_link.dart';
import 'package:deep_links/core/constants/app_theme.dart';
import 'package:deep_links/routes/app_pages.dart';
import 'package:deep_links/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'bindings/main_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DeepLink _bloc = DeepLink();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      theme: appThemeData,
      defaultTransition: Transition.rightToLeft,
      getPages: AppPages.pages,
      initialRoute: Routes.INITIAL,
      home: Provider<DeepLink>(
        create: (context) => _bloc,
        dispose: (context, bloc) => bloc.dispose(),
        child: HomePage(),
      ),
    );
  }
}
