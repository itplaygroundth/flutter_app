import 'package:firstapp/screens/phone_screent.dart';
import 'package:firstapp/screens/ticket_view.dart';
import 'package:firstapp/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Red Dragon", style: Styles.headLineStyle3),
                        const Gap(5),
                        Text("Magic Pro", style: Styles.headLineStyle1),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/images/ic_logo.png"))),
                    )
                  ],
                ),
                // ignore: prefer_const_literals_to_create_immutables
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                          FluentSystemIcons.ic_fluent_search_info_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Phone",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                        onTap: () {
                          // ignore: avoid_print
                          print("Show All");
                        },
                        child: Text(
                          "View All",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ))
                  ],
                )
              ]),
            ),
            const Gap(15),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                child: Row(children: [TicketView(), TicketView()])),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Phones",
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                      onTap: () {
                        // ignore: avoid_print
                        print("Show All");
                      },
                      child: Text(
                        "View All",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ))
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                    children: phoneList
                        .map((singlePhone) => PhoneScreen(phone: singlePhone))
                        .toList())),
          ],
        ));
  }
}
