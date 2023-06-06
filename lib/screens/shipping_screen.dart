import 'package:flutter/material.dart';
import 'package:furniture_app/models/user_model.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/data/database/users.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/services/constants/strings.dart';

List<String> address = [
  "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
  "18 rue Jean Medecin, Nice, 06200, Côte D’azur, France",
  "20 rue Promenade, Nice, 06200, Côte D’azur, France",
];


class ShippingScreen extends StatefulWidget {
  static const id = "/shipping";

  const ShippingScreen({Key? key}) : super(key: key);

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      /// #appBar
      appBar: const CustomAppBar(),

      /// #body
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: CustomListView(user: usersList.first,),
      ),

      /// #FloatingActionButtonLocation
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      /// #floatingActionButton
      floatingActionButton: const CustomActionButton(),
    );
  }
}








class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(

      /// #back button
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: BackButton(
          onPressed: () => customFunctionBack(context),
          color: AppColors.c303030,
        ),
      ),

      /// #title
      title: Text(
        Strings.shippingAddress.text,
        style: AppTextStyles.merriWeatherBold18.copyWith(
          color: AppColors.c303030,
        ),
      ),

      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}

class CustomListView extends StatelessWidget {
  User user;
   CustomListView({
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: address.length,
      shrinkWrap: true,
      itemBuilder: (context, i) {

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            /// #sizeHeight
            const SizeHeight(),

            /// #chack box and shipping address
             AddressCheckBox(checker: i,),

            /// #sizeHeight
            const SizeHeight(),

            /// #full person address
            CustomAddress(userName: user.name, address: address[i]),
          ],
        );
      },
    );
  }
}

class SizeHeight extends StatelessWidget {
  final double height;

  const SizeHeight({Key? key, this.height = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height * MediaQuery.of(context).size.height / 815);
  }
}

class AddressCheckBox extends StatefulWidget {
  final int checker;

   const AddressCheckBox({required this.checker, Key? key}) : super(key: key);

  @override
  State<AddressCheckBox> createState() => _AddressCheckBoxState();
}

class _AddressCheckBoxState extends State<AddressCheckBox> {
  int check = 0;
  late int checker;


  @override
  void initState() {
    super.initState();
    checker = widget.checker;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    return GestureDetector(

      onTap: () {
        setState(() {
          check = checker;
        });
      },

      /// #check Box & Shipping Address
      child: Row(
        children: [

          /// #checkBox
          (check == checker)
              ? const Icon(Icons.check_box)
              : const Icon(
            Icons.check_box_outline_blank,
            color: AppColors.c909090,
          ),

           SizedBox( width: 15 * width / 375,),

          /// #shippingAddress
          Text(
            Strings.shippingAddress.text,
            style: AppTextStyles.nunitoSansRegular18
                .copyWith(color: AppColors.c808080),
          ),
        ],
      ),
    );
  }
}

class CustomAddress extends StatelessWidget {
  String userName;
  final String address;

   CustomAddress({required this.userName, required this.address, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.cFFFFFF,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey.shade200,
            offset: const Offset(2, 6),
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        children: [

          /// #person_name
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  /// #user name
                  Text(userName,
                      style: AppTextStyles.nunitoSansBold18.copyWith(
                      color: AppColors.c303030,)
                  ),

                  /// #edit Button
                  FilledButton(
                    onPressed: () => customFunctionSaveIcon(context),
                    style:  const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                      overlayColor: MaterialStatePropertyAll(AppColors.cF0F0F0),
                    ),
                    child: SvgIcon.edit,
                  ),
                ],
              ),
            ),
          ),

          const Divider(thickness: 3, color: AppColors.cF0F0F0),

          /// #full_address
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Text(
                address,
                style: AppTextStyles.nunitoSansRegular14
                .copyWith(color: AppColors.c808080, height: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    /// #addIcon
    return FloatingActionButton(
      elevation: 0.2,
      backgroundColor: AppColors.cFFFFFF,
      onPressed: () => customFunctionActionButton(context),
      child: SvgIcon.add,
    );
  }
}







/// Custom Functions

void customFunctionBack (BuildContext context){
   Navigator.of(context).pop();
}
void customFunctionCheckBox (BuildContext context){

}
void customFunctionSaveIcon(BuildContext context){

}
void customFunctionActionButton(BuildContext context){

}