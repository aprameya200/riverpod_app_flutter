// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TripModelAdapter extends TypeAdapter<TripModel> {
  @override
  final int typeId = 0;

  @override
  TripModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TripModel(
      fields[0] as String?,
      fields[1] as String?,
      fields[3] as int?,
      fields[4] as double?,
      fields[5] as String?,
      (fields[6] as List?)?.cast<Itinerary>(),
      (fields[2] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, TripModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.destination)
      ..writeByte(2)
      ..write(obj.pictures)
      ..writeByte(3)
      ..write(obj.duration)
      ..writeByte(4)
      ..write(obj.costPerPerson)
      ..writeByte(5)
      ..write(obj.notes)
      ..writeByte(6)
      ..write(obj.itinerary);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TripModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
