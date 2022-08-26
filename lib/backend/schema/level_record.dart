import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'level_record.g.dart';

abstract class LevelRecord implements Built<LevelRecord, LevelRecordBuilder> {
  static Serializer<LevelRecord> get serializer => _$levelRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'LevelList')
  BuiltList<String> get levelList;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LevelRecordBuilder builder) =>
      builder..levelList = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Level');

  static Stream<LevelRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LevelRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LevelRecord._();
  factory LevelRecord([void Function(LevelRecordBuilder) updates]) =
      _$LevelRecord;

  static LevelRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLevelRecordData() => serializers.toFirestore(
    LevelRecord.serializer, LevelRecord((l) => l..levelList = null));
