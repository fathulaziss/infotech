part of 'models.dart';

class Menu {
  final String userMenu;
  final String picturePath;

  Menu({this.userMenu, this.picturePath});
}

List<Menu> mockUserMenu = [
  Menu(userMenu: 'Final Grade', picturePath: 'assets/final_grade.png'),
  Menu(userMenu: 'Violation Points', picturePath: 'assets/violation_point.png'),
  Menu(userMenu: 'Download Module', picturePath: 'assets/download_module.png'),
  Menu(userMenu: 'My Schedule', picturePath: 'assets/my_schedule.png'),
];
