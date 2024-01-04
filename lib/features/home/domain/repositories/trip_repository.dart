import '../entities/trip.dart';

//all cruds or abstraction of the data access
abstract class TripRepository{
  Future<List<Trip>> getTrips();
  Future<void> addTrips(Trip trip);
  Future<void> deleteTrips(int index);

}