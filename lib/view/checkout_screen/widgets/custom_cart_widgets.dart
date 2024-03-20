import 'package:flutter/material.dart';
import 'package:grocery_task/constants/color_constants.dart';
import 'package:grocery_task/constants/image_constants.dart';
import 'package:grocery_task/model/product_details_model/product_details_model.dart';

class CustomCartWidgets extends StatelessWidget {
  CustomCartWidgets({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 150,
            width: 370,
            decoration: BoxDecoration(
                color: ColorConstants.primaryWhite,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset(
                  productModel.image,
                  scale: 2,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productModel.name,
                        style: TextStyle(
                            color: ColorConstants.primaryBlack,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            productModel.price,
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            productModel.discount,
                            style: TextStyle(
                                fontSize: 12,
                                color: ColorConstants.primaryBlack,
                                decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            productModel.offer,
                            style: TextStyle(
                              fontSize: 12,
                              color: ColorConstants.primaryGreen,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: ColorConstants.primaryWhite,
                                border: Border.all(
                                    color: ColorConstants.primaryGreen)),
                            child: Icon(Icons.remove, size: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            productModel.addCount.toString(),
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ColorConstants.primaryWhite,
                                border: Border.all(
                                    color: ColorConstants.primaryGreen)),
                            child: Icon(Icons.add, size: 15),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: ColorConstants.primaryGreen.withOpacity(.1),
                radius: 14,
                child: Icon(
                  Icons.delete,
                  size: 18,
                  color: ColorConstants.primaryGreen,
                ),
              )),
        ],
      ),
    );
  }
}
