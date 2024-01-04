//use cases for the methods defined in the repository class
import 'package:riverpod_in_flutter/features/home/domain/entities/trip.dart';
import 'package:riverpod_in_flutter/features/home/domain/repositories/trip_repository.dart';

class DeleteTrips {
  final TripRepository tripRepository;

  DeleteTrips(this.tripRepository);

  Future<void> call(int index){
    return tripRepository.deleteTrips(index);
  }
}