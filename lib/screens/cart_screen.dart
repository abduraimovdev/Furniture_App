import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/screens/check_out_screen.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/views/cart_components/cart_components.dart';

void main(List<String> args) {
  runApp(const CartScreen());
}

class CartScreen extends StatefulWidget {
  static const id = "/cart";
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalSum = 0;
  TextEditingController promoCodeController = TextEditingController();

  CartController controller = CartController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.cFFFFFF.color,
            elevation: 0,
            leading: const Icon(
              CupertinoIcons.chevron_back,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              Strings.myCart.text,
              style: AppTextStyles.merriWeatherBold18.copyWith(
                color: AppColors.c303030.color,
              ),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.58,
                      child: ListView(children: [
                        Column(
                          children: [
                            CartItemWidget(
                              changed: (price) {
                                totalSum = price;
                                setState(() {});
                              },
                              imageLink: AppImage.product9.img,
                              textLink: Strings.minimalStand.text,
                              price: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Divider(),
                            ),
                            CartItemWidget(
                              changed: (price) {
                                totalSum = price;
                                setState(() {});
                              },
                              imageLink: AppImage.product9.img,
                              textLink: Strings.minimalStand.text,
                              price: 20,
                            ),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: AppColors.cFFFFFF.color,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: TextField(
                                  controller: promoCodeController,
                                  decoration: const InputDecoration(
                                      hintText: "Enter your promo code",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              SizedBox(
                                height: 55,
                                width: 55,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppColors.c303030.color),
                                  child: Center(
                                      child: Icon(
                                    CupertinoIcons.chevron_forward,
                                    color: AppColors.cFFFFFF.color,
                                  )),
                                ),
                              )
                            ],
                          )),
                    ),
                    TotalSumm(total: totalSum),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.5),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(CheckOutScreen.id);
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize:
                                  Size(MediaQuery.of(context).size.width, 60),
                              backgroundColor: AppColors.c303030.color,
                              elevation: 15,
                              shadowColor: Colors.black),
                          child: Text(
                            Strings.checkOut.text,
                            style: AppTextStyles.nunitoSansBold20,
                          )),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
