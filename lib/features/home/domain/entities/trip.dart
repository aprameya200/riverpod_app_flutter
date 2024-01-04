import 'itinerary.dart';

class Trip{
    final String? title;
    final String? destination;
    final List<String>? pictures;
    final int? duration;
    final double? costPerPerson;
    final String? notes;
    final List<Itinerary>? itinerary;

    Trip(this.title, this.destination, this.duration, this.costPerPerson,
        this.notes, this.itinerary, this.pictures);

}