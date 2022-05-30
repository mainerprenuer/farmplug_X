import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
            "./assets/image/food0.png",
            width: double.maxFinite,
          )),
        )
      ]),
    );
  }
}
