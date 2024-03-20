import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_task/constants/color_constants.dart';
import 'package:grocery_task/constants/image_constants.dart';
import 'package:grocery_task/model/best_seller_model/best_seller_model.dart';

class CustomBestSeller extends StatelessWidget {
  CustomBestSeller({super.key, best, required this.bestSellerModel});

  final BestSellerModel bestSellerModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Material(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            height: 230,
            width: 160,
            decoration: BoxDecoration(
                color: ColorConstants.secondayGrey.withOpacity(.1),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  bestSellerModel.image,
                  scale: 2,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: List.generate(
                      bestSellerModel.starCount,
                      (index) => Padding(
                          padding: const EdgeInsets.all(1),
                          child: Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.amber,
                          ))),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  bestSellerModel.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Row(
                  children: [
                    Text(bestSellerModel.price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(bestSellerModel.discount,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough)),
                    SizedBox(
                      width: 3,
                    ),
                    Text(bestSellerModel.offer,
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
        ),
        Positioned(
            bottom: 20,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Icon(
                Icons.shopping_cart,
                size: 18,
                color: Colors.white,
              ),
            )),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: ColorConstants.primaryGreen,
                ))),
      ],
    );
  }
}
