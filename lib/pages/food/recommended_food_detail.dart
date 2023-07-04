import 'package:flutter/material.dart';
import 'package:farmplug/utils/colors.dart';
import 'package:farmplug/utils/dimensions.dart';
import 'package:farmplug/widgets/app_icon.dart';
import 'package:farmplug/widgets/big_text.dart';
import 'package:farmplug/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ]),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                        size: Dimension.font26, text: "Tasty Shawarma")),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimension.radius20),
                      topRight: Radius.circular(Dimension.radius20),
                    )),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "./assets/image/food0.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: const ExpandableTextWidget(
                      text:
                          "About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds.About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds.About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds.About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds.About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds.About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds.About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds.About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds. About Chicken Shawarma Recipe: Shawarma is vastly popular across the middle-east, specially Lebanon. Now a popular street food as well, chicken shawarma has quickly garnered appreciation across the globe, particularly in India. You can prepare this easy shawarma at home as a side dish for brunch or for evening snacks.Ingredients in Chicken Shawarma: Chicken baked in a yogurt marinade, rolled up in pita bread and served with tahini or mayonnaise. This seems like the perfect dish for your evening binge eating Key Ingredients: Boneless chicken thighs (skinless), malt vinegar, plain yogurt, vegetable oil, salt and pepper, freshly ground cardamom, All spice powder, tahini, plain yogurt, garlic (minced), lemon juice, olive oil, fresh parsley, salt and pepper, tomatoes, onion, lettuce, Pita bread rounds."),
                  margin: EdgeInsets.only(
                      left: Dimension.width20, right: Dimension.width20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimension.width20 * 2.5,
              right: Dimension.width20 * 2.5,
              top: Dimension.height10,
              bottom: Dimension.height10,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                      iconSize: Dimension.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.remove),
                  BigText(
                    text: "N500 " " X " " 0 ",
                    color: AppColors.mainBlackColor,
                    size: Dimension.font26,
                  ),
                  AppIcon(
                      iconSize: Dimension.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.add),
                ]),
          ),
          Container(
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
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
