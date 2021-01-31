part of 'models.dart';

class Event extends Equatable {
  final int id;
  final String title;
  final int quota;
  final DateTime dateTime;
  final String time;
  final String location;
  final String facilities;
  final int cost;
  final String description;
  final String picturePath;

  Event(
      {this.id,
      this.title,
      this.quota,
      this.dateTime,
      this.time,
      this.location,
      this.facilities,
      this.cost,
      this.description,
      this.picturePath});

  @override
  List<Object> get props => [
        id,
        title,
        quota,
        dateTime,
        time,
        location,
        facilities,
        cost,
        description,
        picturePath
      ];
}

List<Event> mockEvent = [
  Event(
      id: 1,
      title: "Workshop : How To Become A UX Designer",
      picturePath:
          "https://i1.wp.com/kliklegal.com/wp-content/uploads/2020/04/you-x-ventures-Oalh2MojUuk-unsplash.jpg",
      description: "Available",
      cost: 150000,
      quota: 40,
      dateTime: DateTime.now(),
      time: "08.40 - 10.20",
      location: "Lab A",
      facilities: ""),
  Event(
      id: 2,
      title: "Workshop : Laravel for Beginner",
      picturePath:
          "https://emka.web.id/wp-content/uploads/2013/09/laravel-logo-big.png",
      description: "Available",
      cost: 120000,
      quota: 40,
      dateTime: DateTime.now(),
      time: "08.40 - 10.20",
      location: "Lab B",
      facilities: ""),
  Event(
      id: 3,
      title: "Workshop : Basic Programming with C",
      picturePath:
          "https://3.bp.blogspot.com/-RIdXH7jxL2s/WnNVDImYumI/AAAAAAAAAKY/KZ9Un-sHHMQT2bITKETBUqW0gXto85PZwCPcBGAYYCw/s640/Logo%2Bbahasa%2Bpemrograman%2BC.png",
      description: "Available",
      cost: 80000,
      quota: 40,
      dateTime: DateTime.now(),
      time: "08.40 - 10.20",
      location: "Lab C",
      facilities: ""),
];
