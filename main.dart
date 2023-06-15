// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/pages/aboutus.dart';
import 'package:newproject/pages/cart_final.dart';
import 'package:newproject/pages/cart_page.dart';
import 'package:newproject/pages/change_password.dart';
import 'package:newproject/pages/checkout.dart';
import 'package:newproject/pages/contactus.dart';
import 'package:newproject/pages/drawer.dart';
import 'package:newproject/pages/edit_page.dart';
import 'package:newproject/pages/myorder.dart';
import 'package:newproject/pages/notification.dart';
import 'package:newproject/pages/paymentcard.dart';
import 'package:newproject/pages/paymentmethod.dart';
import 'package:newproject/pages/personalDetails.dart';
import 'package:newproject/pages/productstart_page.dart';
import 'package:newproject/pages/profile.dart';
import 'package:newproject/pages/start_home_page.dart';
import 'package:newproject/pages/changedPassWord.dart';
import 'package:newproject/pages/termcondition.dart';
import 'package:newproject/pages/track_order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ProductstartPage(),
      //    home: const StartHomePage(),
      // home: const ProfileScreen(),
      // home: const PersonalDetails(),
      //   home:const ProfileScreen(),
      //  home:const EditPersonalDetails(),
      //   home: DrawerPage(),
      //  home: const ChangePersonalDetails(),
      //  home: const ChangedPassWord(),
      // home: const TrackOrderPage(),
      // home:const CartPage(),
      //  home:const CartFinalPage(),
      //  home:const MyOrderPage(),
      //  home: const ContactUsPage(),
      // home: const TermConditionPage(),
      // home:const AboutUsPage(),
      // home:const NotificationPage(),
      // home:const PaymentMethod(),
      // home:const PaymentCard(),
       home: const CheckoutPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

Widget customDrawer({required context}) {
  final _mediaQuery = MediaQuery.of(context);
  return Container(
    // padding: EdgeInsets.only(top: _mediaQuery.viewPadding.top),
    width: _mediaQuery.size.width * 0.75,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(90))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: _mediaQuery.size.height * 0.25,
          decoration: const BoxDecoration(
              color: Color(0XFF00C8B8),
              borderRadius: BorderRadius.only(topRight: Radius.circular(90))),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF1E1E1E),
                    ),
                    children: [
                      TextSpan(
                        text: 'John Smith \n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF1E1E1E),
                            fontSize: 22),
                      ),
                      TextSpan(
                        text: 'San Francisco, CA',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                child: Text(
                  "your information".toUpperCase(),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
