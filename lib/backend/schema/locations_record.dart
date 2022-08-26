import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'locations_record.g.dart';

abstract class LocationsRecord
    implements Built<LocationsRecord, LocationsRecordBuilder> {
  static Serializer<LocationsRecord> get serializer =>
      _$locationsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'Adress')
  LatLng get adress;

  @nullable
  @BuiltValueField(wireName: 'PhoneNumber')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'Image')
  String get image;

  @nullable
  @BuiltValueField(wireName: 'Description')
  String get description;

  @nullable
  BuiltList<DocumentReference> get likedByUser;

  @nullable
  @BuiltValueField(wireName: 'UserOwner')
  DocumentReference get userOwner;

  @nullable
  @BuiltValueField(wireName: 'SportType')
  DocumentReference get sportType;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LocationsRecordBuilder builder) => builder
    ..name = ''
    ..phoneNumber = ''
    ..image = ''
    ..description = ''
    ..likedByUser = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Locations');

  static Stream<LocationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LocationsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LocationsRecord._();
  factory LocationsRecord([void Function(LocationsRecordBuilder) updates]) =
      _$LocationsRecord;

  static LocationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLocationsRecordData({
  String name,
  LatLng adress,
  String phoneNumber,
  String image,
  String description,
  DocumentReference userOwner,
  DocumentReference sportType,
}) =>
    serializers.toFirestore(
        LocationsRecord.serializer,
        LocationsRecord((l) => l
          ..name = name
          ..adress = adress
          ..phoneNumber = phoneNumber
          ..image = image
          ..description = description
          ..likedByUser = null
          ..userOwner = userOwner
          ..sportType = sportType));
