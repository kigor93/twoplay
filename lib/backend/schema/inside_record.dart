import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'inside_record.g.dart';

abstract class InsideRecord
    implements Built<InsideRecord, InsideRecordBuilder> {
  static Serializer<InsideRecord> get serializer => _$insideRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Insider')
  BuiltList<String> get insider;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(InsideRecordBuilder builder) =>
      builder..insider = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inside');

  static Stream<InsideRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<InsideRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  InsideRecord._();
  factory InsideRecord([void Function(InsideRecordBuilder) updates]) =
      _$InsideRecord;

  static InsideRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createInsideRecordData() => serializers.toFirestore(
    InsideRecord.serializer, InsideRecord((i) => i..insider = null));
