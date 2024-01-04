import 'activity.dart';

class Itinerary{

  final String dayofWeek;
  final DateTime date;
  final List<Activity> activity;

  Itinerary(this.dayofWeek, this.date, this.activity);
}