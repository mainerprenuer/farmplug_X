import 'package:flutter/material.dart';
import 'package:farmplug/pages/home/food_page_body.dart';
import 'package:farmplug/utils/colors.dart';
import 'package:farmplug/utils/dimensions.dart';

import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //showing the header
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimension.height20, bottom: Dimension.height15),
              padding: EdgeInsets.only(
                  left: Dimension.width20, right: Dimension.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                          text: "Nigeria, Sokoto", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(
                            text: "Sokoto",
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: Dimension.height45,
                    height: Dimension.height45,
                    child: Icon(Icons.search,
                        color: Colors.white, size: Dimension.iconSize24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius15),
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //showing the body
          const Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
