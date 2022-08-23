import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lessons38/Constanst/custom_texts.dart';

class SecondScreen extends StatelessWidget {
  final String image;
  final String name;
  final String patronymic;
  final String title;
  final String direction;
  final String department;
  final String email;
  final String birthDay;
  final String phoneNumber;

  SecondScreen({
    Key? key,
    required this.name,
    required this.patronymic,
    required this.title,
    required this.direction,
    required this.department,
    required this.email,
    required this.birthDay,
    required this.phoneNumber,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'assets/images/$image.png',
                      ),
                    )),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  patronymic,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 11,
                    bottom: 39,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Color(0xff3B81EA),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomTexts(
            title: 'Напрвление',
            subtitle: direction,
            Isicon: false,
            name: name,
            patronymic: patronymic,
          ),
          Divider(
            height: 30,
            thickness: 1,
          ),
          CustomTexts(
            title: 'Отдел',
            subtitle: department,
            Isicon: false,
            name: name,
            patronymic: patronymic,
          ),
          Divider(
            height: 30,
            thickness: 1,
          ),
          CustomTexts(
            title: 'Email',
            subtitle: email,
            Isicon: false,
            name: name,
            patronymic: patronymic,
          ),
          Divider(
            height: 30,
            thickness: 1,
          ),
          CustomTexts(
            title: 'Дата рождения',
            subtitle: birthDay,
            Isicon: false,
            name: name,
            patronymic: patronymic,
          ),
          Divider(
            height: 30,
            thickness: 1,
          ),
          CustomTexts(
            title: 'Телефон основной',
            subtitle: phoneNumber,
            Isicon: true,
            name: name,
            patronymic: patronymic,
            
          ),
          Divider(
            height: 30,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
