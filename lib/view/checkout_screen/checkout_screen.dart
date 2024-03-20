import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_task/constants/color_constants.dart';
import 'package:grocery_task/controller/best_seller_controller.dart';
import 'package:grocery_task/view/checkout_screen/widgets/custom_cart_widgets.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorConstants.primaryWhite,
          surfaceTintColor: ColorConstants.primaryWhite,
          elevation: 5,
          title: Text(
            "Checkout",
            style: TextStyle(
                color: ColorConstants.primaryBlack,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CustomCartWidgets(
                      productModel: BestSellerControllerModel
                          .lstProductController[index]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 2),
              SizedBox(
                height: 20,
              ),
              Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 220,
                  width: 370,
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryWhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price Details",
                        style: TextStyle(
                            color: ColorConstants.primaryBlack.withOpacity(.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Price (2 item)",
                                    style: TextStyle(
                                        color: ColorConstants.primaryBlack
                                            .withOpacity(.8),
                                        fontSize: 15),
                                  ),
                                ),
                                Text(
                                  "\$16",
                                  style: TextStyle(
                                      color: ColorConstants.primaryBlack
                                          .withOpacity(.8),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Discount",
                                    style: TextStyle(
                                        color: ColorConstants.primaryBlack
                                            .withOpacity(.8),
                                        fontSize: 15),
                                  ),
                                ),
                                Text(
                                  "\$-10",
                                  style: TextStyle(
                                      color: ColorConstants.primaryBlack
                                          .withOpacity(.8),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Delivery Charges",
                                    style: TextStyle(
                                        color: ColorConstants.primaryBlack
                                            .withOpacity(.8),
                                        fontSize: 15),
                                  ),
                                ),
                                Text(
                                  "\$5",
                                  style: TextStyle(
                                      color: ColorConstants.primaryBlack
                                          .withOpacity(.8),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Total Amount",
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "\$21",
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              SizedBox(
                  height: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorConstants.primaryGreen,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'PROCEED TO CHECKOUT',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
