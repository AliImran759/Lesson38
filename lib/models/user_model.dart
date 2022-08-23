class UserModel {
  final String? image;
  final String? name;
  final String? patronymic;
  final String? title;
  final String? direction;
  final String? department;
  final String? email;
  final String? birthDay;
  final String? phoneNumber;

  UserModel({
    this.name,
    this.patronymic,
    this.title,
    this.direction,
    this.department,
    this.email,
    this.birthDay,
    this.phoneNumber,
    this.image,
  });
}

class GetUserModelList {
  static List<UserModel> userModelList = [
    UserModel(
      image: 'image1',
      name: 'Жыпаркулов Мырзабек',
      patronymic: 'Жыпаркулович',
      title: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthDay: '16.09.1972',
      phoneNumber: '+9965501234321',
    ),
    UserModel(
      image: 'image4',
      name: 'Артыкбаев Расул',
      patronymic: 'Саткынович',
      title: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthDay: '16.09.1972',
      phoneNumber: '+9965501234321',
    ),
    UserModel(
      image: 'image1',
      name: 'Жыпаркулов Мырзабек',
      patronymic: 'Жыпаркулович',
      title: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthDay: '16.09.1972',
      phoneNumber: '+9965501234321',
    ),
    UserModel(
      image: 'image2',
      name: 'Жыпаркулов Мырзабек',
      patronymic: 'Жыпаркулович',
      title: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthDay: '16.09.1972',
      phoneNumber: '+9965501234321',
    ),
    UserModel(
      image: 'image3',
      name: 'Жыпаркулов Мырзабек',
      patronymic: 'Жыпаркулович',
      title: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthDay: '16.09.1972',
      phoneNumber: '+9965501234321',
    ),
    UserModel(
      image: 'image3',
      name: 'Жыпаркулов Мырзабек',
      title: 'Генеральный директор',
      direction: 'Дирекция управления',
      department: 'Отдел управления',
      email: 'mjagarkulov@gosecotech.kg',
      birthDay: '16.09.1972',
      phoneNumber: '+9965501234321',
    ),
  ];
}
