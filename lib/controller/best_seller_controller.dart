import 'package:grocery_task/constants/image_constants.dart';
import 'package:grocery_task/model/best_seller_model/best_seller_model.dart';
import 'package:grocery_task/model/product_details_model/product_details_model.dart';

class BestSellerControllerModel {
  static List<BestSellerModel> lstBestSeller = [
    BestSellerModel(
        image: ImageConstants.redLabl,
        name: "Red Label Tea Leaf,1kg",
        price: "\$%12",
        discount: "\$12",
        offer: "5% offer",
        starCount: 4),
    BestSellerModel(
        image: ImageConstants.tataTea,
        name: "Tata Tea Leaf",
        price: "\$%4",
        discount: "\$12",
        offer: "5% offer",
        starCount: 2),
    BestSellerModel(
        image: ImageConstants.redLabl,
        name: "Red Label Tea Leaf,1kg",
        price: "\$%12",
        discount: "\$12",
        offer: "5% offer",
        starCount: 3),
    BestSellerModel(
        image: ImageConstants.tataTea,
        name: "Tata Tea Leaf",
        price: "\$%4",
        discount: "\$12",
        offer: "5% offer",
        starCount: 5)
  ];

  static List<ProductModel> lstProductController = [
    ProductModel(
      1,
        review: "4.2",
        image: ImageConstants.redLabl,
        name: "Red Label Tea Leaf,1kg",
        price: "\$%7",
        discount: "\$12",
        offer: "5% offer",
        rating: "91 ratings",
        brandName: [
          "Brand",
          "Type",
          "quantity",
          "Shelf life",
          "Organic",
          "Flavor"
        ],
        brand: ["Red Label", "Black Tea", "7 KG", "12 Months", "No", "plain"],
        type: "Black Tea",
        quantity: "7 KG",
        sheilfLief: "12 Months",
        organic: "No",
        flavor: "Plain"),
    ProductModel(
      2,
        review: "3.2",
        image: ImageConstants.tataTea,
        name: "Tata Tea Leaf",
        price: "\$%4",
        discount: "\$12",
        offer: "5% offer",
        rating: "89 ratings",
        brandName: [
          "Brand",
          "Type",
          "quantity",
          "Shelf life",
          "Organic",
          "Flavor"
        ],
        brand: ["Tata Tea", "Black Tea", "7 KG", "12 Months", "No", "plain"],
        type: "Black Tea",
        quantity: "7 KG",
        sheilfLief: "12 Months",
        organic: "No",
        flavor: "Plain")
  ];
}
