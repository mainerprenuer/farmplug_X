import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.20;
  static double pageViewContainer = screenHeight / 3.10;
  static double pageTextContainer = screenHeight / 6.20;

  //dynamic height padding and margin
  static double height10 = screenHeight / 80.4;
  static double height15 = screenHeight / 51.4;
  static double height20 = screenHeight / 40.2;
  static double height30 = screenHeight / 26.13;
  static double height45 = screenHeight / 16.33;

  //dynamic width padding and margin
  static double width10 = screenHeight / 80.4;
  static double width15 = screenHeight / 51.4;
  static double width20 = screenHeight / 40.2;
  static double width30 = screenHeight / 26.13;

  //font size
  static double font20 = screenHeight / 40.2;
  static double font26 = screenHeight / 30.52;

  //radius
  static double radius15 = screenHeight / 54.2;
  static double radius20 = screenHeight / 40.2;
  static double radius30 = screenHeight / 26.2;

  //icon size
  static double iconSize24 = screenHeight / 33.28;
  static double iconSize16 = screenHeight / 50.78;

  //list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  //popular food
  static double popularFoodImgSize = screenHeight / 2.20;
}
