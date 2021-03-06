part of 'models.dart';

class Stuff {
  final int id;
  final String name;
  final String picturePath;
  final String description;
  final String dateTime;
  final String location;

  Stuff(
      {this.id,
      this.name,
      this.picturePath,
      this.description,
      this.dateTime,
      this.location});
}

List<Stuff> mockStuff = [
  Stuff(
    id: 1,
    name: "Book",
    picturePath:
        "https://images.squarespace-cdn.com/content/v1/5c894e780b77bd4edd6ca5fd/1587739732331-CTK47KTCZ2DNJ1MSFEXY/ke17ZwdGBToddI8pDm48kAWAoTh2l9Uo-6hbgkDBP2N7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1US0sPMSh_NAxqp2pBBcPoNNK4iqj8Y1A9hy4Fszal4jRoigcjv2FKwDE0MJ2j4H-qg/martha-dominguez-de-gouveia-9UtO1v50BYM-unsplash.jpg",
    description: "Available",
    location: "Lab B",
    dateTime: "06 September 2020",
  ),
  Stuff(
    id: 2,
    name: "Mac Charger",
    picturePath:
        "https://images.unsplash.com/photo-1583863788434-e58a36330cf0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80",
    description: "Taken",
    location: "Lab A",
    dateTime: "06 September 2020",
  ),
  Stuff(
    id: 3,
    name: "AirPods",
    picturePath:
        "https://the8-bit.com/wp-content/uploads/2020/10/miguel-tomas-v2jqvmNuxJE-unsplash.jpg",
    description: "Available",
    location: "Lab C",
    dateTime: "06 September 2020",
  ),
  Stuff(
    id: 4,
    name: "AirPods",
    picturePath:
        "https://images.unsplash.com/photo-1505236273191-1dce886b01e9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
    description: "Available",
    location: "Lab D",
    dateTime: "06 September 2020",
  ),
  Stuff(
    id: 5,
    name: "AirPods",
    picturePath:
        "https://images.unsplash.com/photo-1505236273191-1dce886b01e9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
    description: "Available",
    location: "Lab D",
    dateTime: "06 September 2020",
  ),
  Stuff(
    id: 6,
    name: "AirPods",
    picturePath:
        "https://images.unsplash.com/photo-1505236273191-1dce886b01e9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
    description: "Available",
    location: "Lab D",
    dateTime: "06 September 2020",
  ),
  Stuff(
    id: 7,
    name: "AirPods",
    picturePath:
        "https://images.unsplash.com/photo-1505236273191-1dce886b01e9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
    description: "Available",
    location: "Lab D",
    dateTime: "06 September 2020",
  ),
];
