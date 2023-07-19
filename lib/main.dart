import 'package:farmplug/pages/food/recommended_food_detail.dart';
import 'package:farmplug/pages/home/food_page_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:farmplug/pages/food/popular_food_detail.dart';
import 'package:farmplug/pages/home/main_food_page.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Farmplug',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RecommendedFoodDetail());
  }
}
