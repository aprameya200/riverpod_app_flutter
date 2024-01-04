//use cases for the methods defined in the repository class
import 'package:riverpod_in_flutter/features/home/domain/entities/trip.dart';
import 'package:riverpod_in_flutter/features/home/domain/repositories/trip_repository.dart';

class GetTrips {
  final TripRepository tripRepository;

  GetTrips(this.tripRepository);

  Future<List<Trip>> call(){
    return tripRepository.getTrips();
  }
}