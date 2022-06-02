import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:godelicious/pages/food/popular_food_detail.dart';
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
        title: 'Go_Delicious',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PopularFoodDetail());
  }
}
