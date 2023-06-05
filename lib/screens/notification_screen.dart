import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';

class NotificationScreen extends StatefulWidget {
  static const id = "/notification";

  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    //double myWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      /// #appBar
      appBar: const NotificationAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// #firstContainer
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              color: AppColors.cF0F0F0.color,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 15),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8,bottom: 8,left: 12,right: 12),
                      child:MyClipRRect(),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Flexible(
                            child: Text(
                              "Your order #12345 has been confirmed",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBoxHeight5(),
                           Flexible(
                            child: Text(
                              Strings.loremIpsum.text,
                              style: AppTextStyles.nunitoSansRegular12
                                  .copyWith(color: AppColors.c808080.color),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "New",
                              style: TextStyle(
                                  color: const Color(0xFFF2994A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppTextStyles
                                      .nunitoSansBold14.fontFamily),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            /// #secondSizedBox
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 8),
                child: Row(
                  children: [
                     Padding(
                      padding: const EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(image: AppImage.product11.img),
                      ),
                    ),
                    const SizedBoxWidth5(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Your order #12345 has been confirmed",
                              style: TextStyle(
                                height: 2.2,
                                fontFamily:
                                AppTextStyles.nunitoSansBold12.fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBoxHeight5(),
                          Flexible(
                            child: Text(
                              Strings.loremIpsum.text,
                              style: AppTextStyles.nunitoSansRegular12
                                  .copyWith(color: AppColors.c808080.color),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            /// #thirdContainer
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              color: AppColors.cF0F0F0.color,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 15),
                child: Row(
                  children: [
                    const SizedBoxWidth5(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Flexible(
                            child: Text(
                              "Discover hot sale furniture this week",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                         const SizedBoxHeight5(),
                           Flexible(
                            child: Text(
                              Strings.loremIpsum.text,
                              style: AppTextStyles.nunitoSansRegular12
                                  .copyWith(color: AppColors.c808080.color),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "HOT!",
                              style: TextStyle(
                                  color: const Color(0xFFEB5757),
                                  fontSize: 14,
                                  fontFamily:
                                      AppTextStyles.nunitoSansBold14.fontFamily,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            /// #fourthSizedBox
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 8),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: MyClipRRect(),
                    ),
                    const SizedBoxWidth5(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Your order #1234 has been shipped successfully",
                              style: TextStyle(
                                fontFamily:
                                AppTextStyles.nunitoSansBold12.fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBoxHeight5(),
                          Flexible(
                            child: Text(
                              "Please help us to confirm and rate your order to get 10% discount code for next order.",
                              style: AppTextStyles.nunitoSansRegular12
                                  .copyWith(color: AppColors.c808080.color),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const MyDivider(),
            /// #fifthSizedBox
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 8),
                child: Row(
                  children: [
                    const Padding(
                      padding:  EdgeInsets.all(8),
                      child: MyClipRRect(),
                    ),
                    const SizedBoxWidth5(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Your order #12345 has been confirmed",
                              style: TextStyle(
                                height: 2.2,
                                fontFamily:
                                AppTextStyles.nunitoSansBold12.fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBoxHeight5(),
                          Flexible(
                            child: Text(
                              Strings.loremIpsum.text,
                              style: AppTextStyles.nunitoSansRegular12
                                  .copyWith(color: AppColors.c808080.color),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const MyDivider(),
            /// # sixthSizedBox
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 8),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: MyClipRRect(),
                    ),
                    const SizedBoxWidth5(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Your order #1234 has been canceled",
                              style: TextStyle(
                                height: 2.2,
                                fontFamily:
                                AppTextStyles.nunitoSansBold12.fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBoxHeight5(),
                          Flexible(
                            child: Text(
                              Strings.loremIpsum.text,
                              style: AppTextStyles.nunitoSansRegular12
                                  .copyWith(color: AppColors.c808080.color),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const MyDivider(),
            /// # seventhSizedBox
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 8),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: MyClipRRect(),
                    ),
                    const SizedBoxWidth5(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Your order #12345 has been shipped successfully",
                              style: TextStyle(
                                fontFamily:
                                    AppTextStyles.nunitoSansBold12.fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBoxHeight5(),
                          Flexible(
                            child: Text(
                              "Please help us to confirm and rate your order to get 10% discount code for next order.",
                              style: AppTextStyles.nunitoSansRegular12
                                  .copyWith(color: AppColors.c808080.color),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}

class MyClipRRect extends StatelessWidget {
  const MyClipRRect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(image: AppImage.product9.img),
    );
  }
}

class SizedBoxWidth5 extends StatelessWidget {
  const SizedBoxWidth5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 5,
    );
  }
}

class SizedBoxHeight5 extends StatelessWidget {
  const SizedBoxHeight5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 5,
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: Colors.grey.shade300,
    );
  }
}

class MyBottomAppBar extends StatefulWidget {
  const MyBottomAppBar({Key? key}) : super(key: key);

  @override
  State<MyBottomAppBar> createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  int initialSelection = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //currentIndex: initialSelection,
      onTap: (index) {
        initialSelection = index;
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(
            icon: initialSelection == 0 ? SvgIcon.homeFill : SvgIcon.home,
            label: ""),
        BottomNavigationBarItem(
            icon: initialSelection == 1 ? SvgIcon.markerFill : SvgIcon.marker,
            label: ""),
        BottomNavigationBarItem(
            icon: initialSelection == 2 ? SvgIcon.bellFill : SvgIcon.bell,
            label: ""),
        BottomNavigationBarItem(
            icon: initialSelection == 3 ? SvgIcon.personFill : SvgIcon.person,
            label: ""),
      ],
    );
  }
}

class NotificationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NotificationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      toolbarHeight: 150,
      leadingWidth: 50,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: SvgIcon.search,
      ),
      title: Text(
        Strings.notification.text,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
