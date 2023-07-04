import 'package:get/get.dart';
import 'package:farmplug/controllers/popular_product_controller.dart';
import 'package:farmplug/data/repository/popular_product_repo.dart';
import '../data/api/api_client.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.farmplug.online"));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
