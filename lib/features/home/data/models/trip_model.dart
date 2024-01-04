import 'package:riverpod_in_flutter/features/home/domain/entities/itinerary.dart';
import 'package:riverpod_in_flutter/features/home/domain/entities/trip.dart';
import 'package:hive/hive.dart';

part 'trip_model.g.dart';

@HiveType(typeId: 0)
class TripModel {
  //to implement the entity class

  @HiveField(0)
  final String? title;
  @HiveField(1)
  final String? destination;
  @HiveField(2)
  final List<String>? pictures;
  @HiveField(3)
  final int? duration;
  @HiveField(4)
  final double? costPerPerson;
  @HiveField(5)
  final String? notes;
  @HiveField(6)
  final List<Itinerary>? itinerary;

  TripModel(this.title, this.destination, this.duration, this.costPerPerson,
      this.notes, this.itinerary, this.pictures);

  //Conversion from Entity to model
  factory TripModel.fromEntity(Trip trip) => TripModel(
      trip.title,
      trip.destination,
      trip.duration,
      trip.costPerPerson,
      trip.notes,
      trip.itinerary,
      trip.pictures);

  Trip toEntity() => Trip(
      title, destination, duration, costPerPerson, notes, itinerary, pictures);

  static List<TripModel> toList(List<dynamic> json) {
    List<TripModel> allTrips = [];


    for (int i = 0; i < json.length; i++) {
      allTrips.add(TripModel(
          json[i]["title"],
          json[i]["destination"],
          json[i]["duration"],
          double.tryParse(json[i]["costPerPerson"].toString()), //previously created conversion errors
          // 1.2,
          json[i]["notes"],
          [],
          []));
    }

    print(allTrips[0].costPerPerson);


    return allTrips;
  }
}
