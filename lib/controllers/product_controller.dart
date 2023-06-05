import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class ProductController extends BaseController {
  void Function(void Function())? updater;
  // Product barcha pagelarda suzib yurish uchun olingan !
  Product product;
  bool isLoading = false;
  int count = 1;
  double sum = 0;
  bool isFavourite = false;

  ProductController({
    this.updater,
    required this.product,
  }) {
    sum = product.price;
  }

  //  Maxsulotga ++ qiluvchi Amal
  void increment() {
    count++;
    sum += product.price;
    updater!(() {});
  }

  //  Maxsulotga -- qiluvchi Amal
  void decrement() {
    if (count > 1) {
      count--;
      sum -= product.price;
      updater!(() {});
    }
  }

  void btnFavourite() {
    isFavourite = !isFavourite;
    updater!(() {});
  }

  void btnBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  void addToCard(BuildContext context) async {
    isLoading = true;
    updater!(() {});

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.c303030.color,
        content: const Text(
          "Successfully Added",
          style: AppTextStyles.nunitoSansBold14,
        ),
      ),
    );

    await Future.delayed(const Duration(seconds: 2));
    isLoading = false;
    updater!(() {});
  }



  // Rating Review
  void btnReview(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (context) => BottomSheet(
        onClosing: () {},
        builder: (context) => SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
