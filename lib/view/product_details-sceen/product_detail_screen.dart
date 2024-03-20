import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_task/constants/color_constants.dart';
import 'package:grocery_task/constants/image_constants.dart';
import 'package:grocery_task/model/product_details_model/product_details_model.dart';
import 'package:grocery_task/view/checkout_screen/checkout_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: ColorConstants.primaryWhite,
          surfaceTintColor: ColorConstants.primaryWhite,
          centerTitle: true,
          title: Text(
            "Poduct Details",
            style: TextStyle(
                color: ColorConstants.primaryBlack,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Material(
                elevation: 5,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 250,
                      width: 370,
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryWhite,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 120),
                            child: Image.asset(
                              productModel.image,
                              scale: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  productModel.name,
                                  style: TextStyle(
                                      color: ColorConstants.primaryBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: ColorConstants.primaryGreen),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            productModel.review,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: ColorConstants
                                                    .primaryWhite),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: ColorConstants.primaryWhite,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      productModel.rating,
                                      style: TextStyle(
                                          color: ColorConstants.primaryBlack
                                              .withOpacity(.4),
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(productModel.price,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(productModel.discount,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.lineThrough)),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(productModel.offer,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: Colors.green)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  ColorConstants.primaryGreen.withOpacity(.1)),
                          child: Icon(
                            Icons.redo,
                            color: ColorConstants.primaryGreen,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 300,
                  width: 370,
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryWhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(
                            color: ColorConstants.primaryBlack, fontSize: 18),
                      ),
                      Divider(),
                      ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      productModel.brandName[index],
                                      style: TextStyle(
                                          color: ColorConstants.primaryBlack
                                              .withOpacity(.4)),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      productModel.brand[index],
                                      style: TextStyle(
                                          color: ColorConstants.primaryBlack,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 15,
                              ),
                          itemCount: productModel.brand.length),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Text(
                            "More Details",
                            style:
                                TextStyle(color: ColorConstants.primaryGreen),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              elevation: 5,
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: ColorConstants.primaryWhite,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                ColorConstants.primaryGreen.withOpacity(.18)),
                        child: Icon(
                          Icons.favorite_border,
                          color: ColorConstants.primaryGreen,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 100),
                              backgroundColor: ColorConstants.secondaryGreen),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CheckoutScreen(),
                                ));
                          },
                          child: Text(
                            "ADD TO CART",
                            style:
                                TextStyle(color: ColorConstants.primaryWhite),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
