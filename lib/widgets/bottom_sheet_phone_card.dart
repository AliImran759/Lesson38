import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneCard extends StatelessWidget {
  final String title1;
  final String subtitle2;

  const PhoneCard(
      {Key? key,
      required this.title1,
      required this.subtitle2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  subtitle2,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                _makePhoneCall(subtitle2);
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Icon(
                  Icons.phone,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
        Divider(
          height: 30,
          thickness: 1,
        ),
      ],
    );
  }
}

Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}
