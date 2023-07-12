import 'package:flutter/material.dart';
import 'package:farmplug/utils/colors.dart';
import 'package:farmplug/utils/dimensions.dart';
import 'package:farmplug/widgets/app_column.dart';
import 'package:farmplug/widgets/app_icon.dart';
import 'package:farmplug/widgets/big_text.dart';
import 'package:farmplug/widgets/expandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                  width: double.maxFinite,
                  height: Dimension.popularFoodImgSize,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("./assets/image/f10.png"))))),
          //icon widgets
          Positioned(
              top: Dimension.height45,
              left: Dimension.width20,
              right: Dimension.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.arrow_back),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimension.popularFoodImgSize - 20,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                      top: Dimension.height20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimension.radius20),
                          topLeft: Radius.circular(Dimension.radius20)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(text: "Fresh Watermelon"),
                      SizedBox(
                        height: Dimension.height20,
                      ),
                      BigText(text: "Introduce"),
                      SizedBox(
                        height: Dimension.height20,
                      ),
                      const Expanded(
                          child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text:
                                "Watermelon's high water content, antioxidants, and amino acids may make for a better workout. It's also high in potassium, a mineral that could cut down on cramps at the gym. You can sip watermelon juice after you sweat, too. Doing so could help prevent muscle soreness, as long as you don't push yourself too hard."),
                      ))
                    ],
                  ))),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimension.height30,
            bottom: Dimension.height30,
            left: Dimension.width20,
            right: Dimension.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimension.radius20 * 2),
              topRight: Radius.circular(Dimension.radius20 * 2),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimension.height20,
                  bottom: Dimension.height20,
                  left: Dimension.width20,
                  right: Dimension.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimension.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimension.width10 / 2,
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimension.height20,
                  bottom: Dimension.height20,
                  left: Dimension.width20,
                  right: Dimension.width20),
              child: BigText(
                text: "N500 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: AppColors.mainColor),
            ),
          ],
        ),
      ),
    );
  }
}
