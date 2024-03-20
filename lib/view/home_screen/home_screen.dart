import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_task/constants/color_constants.dart';
import 'package:grocery_task/constants/image_constants.dart';
import 'package:grocery_task/controller/best_seller_controller.dart';
import 'package:grocery_task/controller/category_controller.dart';
import 'package:grocery_task/view/home_screen/widgets/bestseller_widgets.dart';
import 'package:grocery_task/view/home_screen/widgets/category_widget.dart';
import 'package:grocery_task/view/product_details-sceen/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: ColorConstants.primaryGreen,
          leading: Icon(
            Icons.sort,
            color: ColorConstants.primaryWhite,
            size: 33,
          ),
          title: TextField(
            onTap: () {},
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.black.withOpacity(.2),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConstants.primaryWhite,
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: ColorConstants.primaryWhite),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              children: [
                Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            ImageConstants.grocery_banner,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Organic',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                  color: ColorConstants.primaryBlack
                                      .withOpacity(.5),
                                ),
                              ),
                              Text(
                                'vegetables',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: ColorConstants.primaryBlack
                                      .withOpacity(.5),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Spacer(),
                    Text("View all",
                        style: TextStyle(
                            color: ColorConstants.primaryGreen,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomCategory(
                          categoryModel:
                              CategroyControllerModel.lstCategorySeller[index]),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 10,
                          ),
                      itemCount:
                          CategroyControllerModel.lstCategorySeller.length),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Best Seller",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Spacer(),
                    Text("View all",
                        style: TextStyle(
                            color: ColorConstants.primaryGreen,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductScreen(
                                        productModel: BestSellerControllerModel
                                            .lstProductController[index]),
                                  ));
                            },
                            child: CustomBestSeller(
                                bestSellerModel: BestSellerControllerModel
                                    .lstBestSeller[index]),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 10,
                          ),
                      itemCount:
                          BestSellerControllerModel.lstBestSeller.length),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Featured Deals",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Spacer(),
                    Text("View all",
                        style: TextStyle(
                            color: ColorConstants.primaryGreen,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
