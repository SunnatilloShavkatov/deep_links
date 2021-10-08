import 'package:deep_links/ui/events_page.dart';
import 'package:deep_links/ui/home_page.dart';
import 'package:get/get.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.EVENT,
      page: () => EventsPage(),
    ),
  ];
}
