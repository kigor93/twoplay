import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sport_type_record.g.dart';

abstract class SportTypeRecord
    implements Built<SportTypeRecord, SportTypeRecordBuilder> {
  static Serializer<SportTypeRecord> get serializer =>
      _$sportTypeRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Sportname')
  BuiltList<String> get sportname;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SportTypeRecordBuilder builder) =>
      builder..sportname = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SportType');

  static Stream<SportTypeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SportTypeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SportTypeRecord._();
  factory SportTypeRecord([void Function(SportTypeRecordBuilder) updates]) =
      _$SportTypeRecord;

  static SportTypeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSportTypeRecordData() => serializers.toFirestore(
    SportTypeRecord.serializer, SportTypeRecord((s) => s..sportname = null));
