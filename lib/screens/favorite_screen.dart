import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/screens/congrats_screen.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class FavoriteScreen extends StatefulWidget {
  static const id = "/favorite";


  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int selected = 0;

  _navbarItem( String path, String secondPath, bool active) {
    return SvgPicture.asset(active ? path : secondPath);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Row(
            children: [
              const SizedBox(width: 20,),
              SvgIcon.search,
            ],
          ),
          title: Text(
            Strings.favorite.text,
            style: AppTextStyles.merriWeatherBold18.copyWith(
              color: AppColors.c303030.color,
            ),
          ),
          centerTitle: true,
          actions: [
            SvgIcon.cart,
            const SizedBox(width: 20,),
          ],
        ),
          /*bottomNavigationBar: NavigationBar(

            selectedIndex: 0,
            height: 70,
            backgroundColor: AppColors.cFFFFFF.color,
            destinations: [
              CupertinoButton(
                onPressed: (){
                  setState(() {
                   selected = 0;
                  });
                },
                  child: _navbarItem(CustomIcons.homeFill.path, CustomIcons.home.path,selected == 0 )),
              CupertinoButton(
                onPressed: (){
                  setState(() {
                    selected = 1;
                  });
                },
                  child: _navbarItem(CustomIcons.markerFill.path, CustomIcons.marker.path,selected == 1 )),
              CupertinoButton(
                onPressed: (){},
                  child: SvgIcon.bell),
              CupertinoButton(
                onPressed: (){},
                  child: SvgIcon.person),
            ],
          ),*/
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  /// scroll
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ProductWidget(
                            text: Strings.minimalStand.text,
                            price: "\$ 50.00",
                            image: AppImage.product1.img,
                          ),
                          Divider(
                            thickness: 2,
                            height: 24,
                            color: AppColors.cF0F0F0.color,
                          ),
                          ProductWidget(
                            text: Strings.coffeeChair.text,
                            price: "\$ 20.00",
                            image: AppImage.product2.img,
                          ),
                          Divider(
                            thickness: 2,
                            height: 24,
                            color: AppColors.cF0F0F0.color,
                          ),
                          ProductWidget(
                            text: Strings.minimalStand.text,
                            price: "\$ 25.00",
                            image: AppImage.product3.img,
                          ),
                          Divider(
                            thickness: 2,
                            height: 24,
                            color: AppColors.cF0F0F0.color,
                          ),
                          ProductWidget(
                            text: Strings.minimalDesk.text,
                            price: "\$ 50.00",
                            image: AppImage.product4.img,
                          ),
                          Divider(
                            thickness: 2,
                            height: 24,
                            color: AppColors.cF0F0F0.color,
                          ),
                          ProductWidget(
                            text: Strings.minimalLamp.text,
                            price: "\$ 12.00",
                            image: AppImage.product5.img,
                          ),
                          Divider(
                            thickness: 2,
                            height: 24,
                            color: AppColors.cF0F0F0.color,
                          ),
                          ProductWidget(
                            text: Strings.minimalStand.text,
                            price: "\$ 25.99",
                            image: AppImage.product6.img,
                          ),
                          Divider(
                            thickness: 2,
                            height: 24,
                            color: AppColors.cF0F0F0.color,
                          ),
                          ProductWidget(
                            text: Strings.minimalStand.text,
                            price: "\$ 25.99",
                            image: AppImage.product7.img,
                          ),
                          Divider(
                            thickness: 2,
                            height: 24,
                            color: AppColors.cF0F0F0.color,
                          ),
                          ProductWidget(
                            text: Strings.minimalStand.text,
                            price: "\$ 25.99",
                            image: AppImage.product9.img,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CongratsScreen.id);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      shadowColor: AppColors.c303030.color,
                      backgroundColor: AppColors.c303030.color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      minimumSize: const Size(800, 60),
                    ),
                    child: Text(
                      Strings.addAll.text,
                      style: AppTextStyles.nunitoSansSemiBold18.copyWith(
                        color: AppColors.cFFFFFF.color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class ProductWidget extends StatelessWidget {
  final String text;
  final String price;
  final AssetImage image;

  const ProductWidget({
    super.key,
    required this.text,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: AppTextStyles.nunitoSansSemiBold14.copyWith(
                  color: AppColors.c606060.color,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                price,
                style: AppTextStyles.nunitoSansBold18.copyWith(
                  color: AppColors.c303030.color,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 7,
          ),
          Column(
            children: [
              SizedBox(
                width: 25,
                  height: 25,
                  child: SvgIcon.cancel),
              const Spacer(
                flex: 1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, CongratsScreen.id);
                },
                child: Container(
                  padding: const EdgeInsets.all(6),
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: AppColors.cE0E0E0.color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgIcon.cart2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
