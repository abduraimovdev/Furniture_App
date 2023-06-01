import 'package:furniture_app/screens/boarding_screen.dart';
import 'package:furniture_app/screens/cart_screen.dart';
import 'package:furniture_app/screens/check_out_screen.dart';
import 'package:furniture_app/screens/congrats_screen.dart';
import 'package:furniture_app/screens/favorite_screen.dart';
import 'package:furniture_app/screens/home_screen.dart';
import 'package:furniture_app/screens/notification_screen.dart';
import 'package:furniture_app/screens/order_screen.dart';
import 'package:furniture_app/screens/product_screen.dart';
import 'package:furniture_app/screens/profile_screen.dart';
import 'package:furniture_app/screens/review_screen.dart';
import 'package:furniture_app/screens/shipping_screen.dart';
import 'package:furniture_app/screens/sign_up_screen.dart';
import 'package:furniture_app/screens/sing_in_screen.dart';

bool isAuth = false;

class AppRoutes {
  AppRoutes._();

  static String? get initialRoute {
    if(!isAuth) {
      return BoardingScreen.id;
    } else {
      return HomeScreen.id;
    }
  }

  static final routes = {
    BoardingScreen.id : (context) => const BoardingScreen(),
    CartScreen.id : (context) => const CartScreen(),
    CheckOutScreen.id : (context) => const CheckOutScreen(),
    CongratsScreen.id : (context) => const CongratsScreen(),
    FavoriteScreen.id : (context) => const FavoriteScreen(),
    HomeScreen.id : (context) => const HomeScreen(),
    NotificationScreen.id : (context) => const NotificationScreen(),
    OrderScreen.id : (context) => const OrderScreen(),
    ProductScreen.id : (context) => const ProductScreen(),
    ProfileScreen.id : (context) => const ProfileScreen(),
    ReviewScreen.id : (context) => const ReviewScreen(),
    ShippingScreen.id : (context) => const ShippingScreen(),
    SignUpScreen.id : (context) => const SignUpScreen(),
    SignInScreen.id : (context) => const SignInScreen(),
  };
}