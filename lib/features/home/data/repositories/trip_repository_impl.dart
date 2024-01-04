import 'package:riverpod_in_flutter/features/home/data/datasources/trip_local_datasource.dart';
import 'package:riverpod_in_flutter/features/home/data/datasources/trip_remote_datasource.dart';
import 'package:riverpod_in_flutter/features/home/data/models/trip_model.dart';
import 'package:riverpod_in_flutter/features/home/domain/entities/trip.dart';
import 'package:riverpod_in_flutter/features/home/domain/repositories/trip_repository.dart';

class TripRepositoryImpl implements TripRepository{

  final TripLocalDataSource localDataSource;

  TripRepositoryImpl(this.localDataSource);

  @override
  Future<void> addTrips(Trip trip) async {
    localDataSource.addTrip(TripModel.fromEntity(trip));
  }

  @override
  Future<void> deleteTrips(int index) async {
    localDataSource.deleteTrip(index);
  }

  @override
  Future<List<Trip>> getTrips() async{
    final tripModels = await TripRemoteDataSource.getTrips();
    final tripsList = tripModels.map((e) => e.toEntity()).toList();  //to convert into the desired return type
    return tripsList;
  }
  
}