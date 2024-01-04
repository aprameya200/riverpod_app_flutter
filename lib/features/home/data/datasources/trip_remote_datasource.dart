
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart%20';
import 'package:riverpod_in_flutter/constants/constants.dart';
import 'package:riverpod_in_flutter/features/home/data/models/trip_model.dart';
import 'package:riverpod_in_flutter/features/home/domain/entities/trip.dart';

class TripRemoteDataSource{

  static Future<List<TripModel>> getTrips() async{
    Response response = await http.get(Uri.parse("$endpoint/data"));

    if(response.statusCode == 200){
      final value = jsonDecode(response.body);
      print(value.length.toString());
      return TripModel.toList(value);
    }else{
      throw("Error getting data");
    }
  }

}