import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/views/check_out_components/check_out_components.dart';

class CheckOutScreen extends StatelessWidget {
  static const id = "/checkOut";
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        //Text: CHECK-OUT
        title: appBarText(),
        leading: const BackButton(color: Colors.black),
      ),
      body: Column(
        children: [
          Row(
            children: [
              //Text: Shipping Address
              Padding(
                padding: const EdgeInsets.only(left: 18.0,),
                child: shipping(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 135.0),
                child: editButton(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Container(
              height: height / 6,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.fromDirection(8),
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: const Color(0xFFEFF0F1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  //Text: Bruno Fernandes
                  Padding(
                    padding: const EdgeInsets.only(right: 140, left: 20, top: 15),
                    child: brunoFernandes(),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  //Description: Text
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: descriptionTxt(),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              //Text: Payment
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 20, right: 172),
                child: paymentText(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: editButton(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Container(
              height: height / 9,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.fromDirection(8),
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: const Color(0xFFF0F2F3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      bottom: 22,
                    ),
                    child: Container(
                        height: 38,
                        width: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset.fromDirection(1),
                              blurRadius: 1,
                              spreadRadius: 1,
                              color: const Color(0xFFF0F2F3),
                            ),
                          ],
                        ),
                        child: SvgIcon.card),
                  ),
                  //Text-Card Number
                  Padding(
                    padding: const EdgeInsets.only(left: 19.0),
                    child: cardNumber(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Container(
              height: height / 4.5,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.fromDirection(8),
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: const Color(0xFFF0F2F3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      //Order Text
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 15),
                        child: orderText(),
                      ),
                      //Price 95
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 120),
                        child: price1(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      //Delivery Text
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 15),
                        child: deliveryText(),
                      ),
                      //Price 5
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 98),
                        child: price2(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      //Total text
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 15),
                        child: totalText(),
                      ),
                      //Price 100
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 125),
                        child: price3(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: ElevatedButton(onPressed: () {}, child: submitOrder()),
          )
        ],
      ),
    );
  }
}