import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lessons38/Screens/Second_Screen.dart';
import 'package:lessons38/models/user_model.dart';
import 'package:lessons38/widgets/custom_button.dart';

class CustomContainers extends StatelessWidget {
  CustomContainers({Key? key}) : super(key: key);

  List<UserModel> userModelList = GetUserModelList.userModelList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      height: 300,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 80,
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => SecondScreen(
                          name: userModelList[index].name!,
                          image: userModelList[index].image!,
                          patronymic: userModelList[index].patronymic!,
                          title: userModelList[index].title!,
                          direction: userModelList[index].direction!,
                          department: userModelList[index].department!,
                          email: userModelList[index].email!,
                          birthDay: userModelList[index].birthDay!,
                          phoneNumber: userModelList[index].phoneNumber!,
                        )),
              );
            },
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              height: 64,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 11,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                          'assets/images/${userModelList[index].image}.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userModelList[index].name!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            userModelList[index].patronymic!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomButton(
                      name: userModelList[index].name!,
                      patronymic: userModelList[index].patronymic!,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAvatar extends StatelessWidget {
  final int itemCount;

  CustomAvatar({Key? key, required this.itemCount}) : super(key: key);

  List<UserModel> userModelList = GetUserModelList.userModelList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 19,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) => SizedBox(
          width: 60,
          height: 60,
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => SecondScreen(
                          name: userModelList[index].name!,
                          image: userModelList[index].image!,
                          patronymic: userModelList[index].patronymic!,
                          title: userModelList[index].title!,
                          direction: userModelList[index].direction!,
                          department: userModelList[index].department!,
                          email: userModelList[index].email!,
                          birthDay: userModelList[index].birthDay!,
                          phoneNumber: userModelList[index].phoneNumber!,
                        )),
              );
            },
            icon: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  'assets/images/${userModelList[index].image}.png'),
            ),
          ),
        ),
      ),
    );
  }
}
