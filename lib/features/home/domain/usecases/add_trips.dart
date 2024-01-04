//use cases for the methods defined in the repository class
import 'package:riverpod_in_flutter/features/home/domain/entities/trip.dart';
import 'package:riverpod_in_flutter/features/home/domain/repositories/trip_repository.dart';

class AddTrips {
  final TripRepository tripRepository;

  AddTrips(this.tripRepository);

  Future<void> call(Trip trip){
    return tripRepository.addTrips(trip);
  }
}