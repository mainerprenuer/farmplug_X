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
                        size: Dimension.font26, text: "Fresh Watermelon")),
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
              "./assets/image/f10.png",
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
                          "Watermelon's high water content, antioxidants, and amino acids may make for a better workout. It's also high in potassium, a mineral that could cut down on cramps at the gym. You can sip watermelon juice after you sweat, too. Doing so could help prevent muscle soreness, as long as you don't push yourself too hard."),
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
