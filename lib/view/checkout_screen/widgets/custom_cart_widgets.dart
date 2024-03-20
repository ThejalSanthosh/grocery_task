import 'package:flutter/material.dart';
import 'package:grocery_task/constants/color_constants.dart';
import 'package:grocery_task/constants/image_constants.dart';

class CustomCartWidgets extends StatelessWidget {
  const CustomCartWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 150,
        width: 370,
        decoration: BoxDecoration(
            color: ColorConstants.primaryWhite,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(
              ImageConstants.redLabl,
              scale: 2,
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "RedLabel",
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
                        "\$34",
                        style: TextStyle(
                            color: ColorConstants.primaryBlack,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "\$12",
                        style: TextStyle(
                            fontSize: 12,
                            color: ColorConstants.primaryBlack,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "5% off",
                        style: TextStyle(
                          fontSize: 12,
                          color: ColorConstants.primaryGreen,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(children: [
                   
                   
                     
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
