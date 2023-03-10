import 'package:firstapp/utils/app_layout.dart';
import 'package:firstapp/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PhoneScreen extends StatelessWidget {
  final Map<String, dynamic> phone;
  const PhoneScreen({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Phone price is ${phone['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${phone['image']}"))),
        ),
        const Gap(15),
        Text(
          '${phone['name']}',
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
        const Gap(5),
        Text(
          "Price: ${phone['price']}",
          style: Styles.headLineStyle2.copyWith(color: Colors.white),
        ),
        const Gap(5)
      ]),
    );
  }
}
