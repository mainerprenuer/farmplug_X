import 'package:get/get.dart';
import 'package:godelicious/controllers/popular_product_controller.dart';
import 'package:godelicious/data/repository/popular_product_repo.dart';
import '../data/api/api_client.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.godelicious.online"));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
