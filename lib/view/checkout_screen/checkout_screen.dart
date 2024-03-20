import 'package:flutter/material.dart';
import 'package:grocery_task/constants/color_constants.dart';
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
                  itemBuilder: (context, index) => CustomCartWidgets(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 2)
            ],
          ),
        ),
      ),
    );
  }
}
