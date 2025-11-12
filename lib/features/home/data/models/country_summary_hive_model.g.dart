// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_summary_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountrySummaryHiveModelAdapter
    extends TypeAdapter<CountrySummaryHiveModel> {
  @override
  final int typeId = 2;

  @override
  CountrySummaryHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CountrySummaryHiveModel(
      name: fields[0] as String,
      flag: fields[1] as String,
      cca2: fields[2] as String,
      population: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CountrySummaryHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.flag)
      ..writeByte(2)
      ..write(obj.cca2)
      ..writeByte(3)
      ..write(obj.population);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountrySummaryHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
