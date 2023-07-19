import 'package:get/get.dart';
import 'package:farmplug/data/api/api_client.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData("http://localhost:3100/api/v1/products/"); 
  }
}



