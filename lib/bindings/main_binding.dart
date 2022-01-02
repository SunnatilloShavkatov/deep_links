import 'package:deep_links/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
