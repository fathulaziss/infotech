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

Event mockEvent = Event(
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
    facilities: "");
