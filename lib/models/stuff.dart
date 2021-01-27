part of 'models.dart';

class Stuff extends Equatable {
  final int id;
  final String name;
  final String picturePath;
  final String description;
  final DateTime dateTime;
  final String location;

  Stuff(
      {this.id,
      this.name,
      this.picturePath,
      this.description,
      this.dateTime,
      this.location});

  @override
  List<Object> get props =>
      [id, name, picturePath, description, dateTime, location];
}

Stuff mockStuff = Stuff(
    id: 1,
    name: "Book",
    picturePath:
        "https://images.squarespace-cdn.com/content/v1/5c894e780b77bd4edd6ca5fd/1587739732331-CTK47KTCZ2DNJ1MSFEXY/ke17ZwdGBToddI8pDm48kAWAoTh2l9Uo-6hbgkDBP2N7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1US0sPMSh_NAxqp2pBBcPoNNK4iqj8Y1A9hy4Fszal4jRoigcjv2FKwDE0MJ2j4H-qg/martha-dominguez-de-gouveia-9UtO1v50BYM-unsplash.jpg",
    description: "Available");
