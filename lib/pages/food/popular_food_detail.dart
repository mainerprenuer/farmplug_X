import 'package:flutter/material.dart';
import 'package:godelicious/utils/colors.dart';
import 'package:godelicious/utils/dimensions.dart';
import 'package:godelicious/widgets/app_column.dart';
import 'package:godelicious/widgets/app_icon.dart';
import 'package:godelicious/widgets/big_text.dart';
import 'package:godelicious/widgets/expandable_text_widget.dart';

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
                          image: AssetImage("./assets/image/food0.png"))))),
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
                      const AppColumn(text: "Tasty Shawarma"),
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
                                "About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds."),
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
