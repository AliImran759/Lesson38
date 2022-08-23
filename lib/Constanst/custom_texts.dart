import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lessons38/widgets/bottom_sheet_phone_card.dart';
import 'package:lessons38/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomTexts extends StatelessWidget {
  final String title;

  final String subtitle;
  final bool Isicon;
  final String name;
  final String patronymic;

  const CustomTexts({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.Isicon,
    required this.name,
    required this.patronymic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Isicon
            ? CustomButton(name: name, patronymic: patronymic)
            : SizedBox()
        //         Padding(
        //   padding: const EdgeInsets.only(right: 21),
        //   child: Icon(
        //     Icons.phone,
        //     color: Colors.green,
        //   ),
        // )
      ],
    );
  }
}
