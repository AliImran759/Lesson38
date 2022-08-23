import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lessons38/widgets/bottom_sheet_phone_card.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final String patronymic;

  const CustomButton({Key? key, required this.name, required this.patronymic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(
          Icons.phone,
          color: Colors.green,
        ),
        onPressed: () {
          showModalBottomSheet<void>(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 343,
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 23,
                      right: 22,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 13),
                            child: Row(
                              children: [
                                Text(
                                  'Позвонить',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Spacer(),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      elevation: 0,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xffDEE1E5),
                                      ),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.black,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 51),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  patronymic,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          PhoneCard(
                            title1: 'Телефон основной',
                            subtitle2: '+9965501234321',
                          ),
                          PhoneCard(
                            subtitle2: '+9965501234321',
                            title1: 'Телефон рабочий',
                          ),
                          PhoneCard(
                            subtitle2: '+9965501234321',
                            title1: 'Телефон WhatsApp',
                          ),
                        ],
                      ),
                    ),
                  )),
                );
              });
        });
  }
}
