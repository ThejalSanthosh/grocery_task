import 'package:flutter/cupertino.dart';
import 'package:grocery_task/constants/color_constants.dart';
import 'package:grocery_task/constants/image_constants.dart';
import 'package:grocery_task/model/category_model/category_model.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(
          color: ColorConstants.primaryGreen.withOpacity(.1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
              height: 30,
              width: 55,
              child: Image(
                image: NetworkImage(categoryModel.image),
              )),
          SizedBox(
            height: 10,
          ),
          Text(categoryModel.name)
        ],
      ),
    );
  }
}
