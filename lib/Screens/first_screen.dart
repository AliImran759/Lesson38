import 'package:flutter/material.dart';
import 'package:lessons38/Screens/second_screen.dart';
import 'package:lessons38/models/user_model.dart';
import 'package:lessons38/widgets/custom_button.dart';
import 'package:lessons38/widgets/custom_containers.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  List<UserModel> userModelList = GetUserModelList.userModelList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            top: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(
                  'Сотрудники',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 32,
                  height: 42,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Поиск',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(0xffF2F2F2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: Text(
                  'У кого сегодня день рождения',
                  style: TextStyle(
                    color: Color(0xff3B81EA),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CustomAvatar(itemCount: 6),
              Padding(
                padding: const EdgeInsets.only(bottom: 14, top: 23),
                child: Text(
                  'У кого завтра день рождения',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CustomAvatar(itemCount: 2),
              Padding(
                padding: const EdgeInsets.only(top: 26),
                child: Text(
                  'Все сотрудники',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CustomContainers()
            ],
          ),
        ),
      ),
    );
  }
}
