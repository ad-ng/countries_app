// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountryHiveModelAdapter extends TypeAdapter<CountryHiveModel> {
  @override
  final int typeId = 0;

  @override
  CountryHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CountryHiveModel(
      cca2: fields[0] as String,
      commonName: fields[1] as String,
      flagPng: fields[2] as String,
      capital: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CountryHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.cca2)
      ..writeByte(1)
      ..write(obj.commonName)
      ..writeByte(2)
      ..write(obj.flagPng)
      ..writeByte(3)
      ..write(obj.capital);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
