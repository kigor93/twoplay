import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'match_end_record.g.dart';

abstract class MatchEndRecord
    implements Built<MatchEndRecord, MatchEndRecordBuilder> {
  static Serializer<MatchEndRecord> get serializer =>
      _$matchEndRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'MatchName')
  String get matchName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MatchEndRecordBuilder builder) =>
      builder..matchName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('matchEnd');

  static Stream<MatchEndRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MatchEndRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MatchEndRecord._();
  factory MatchEndRecord([void Function(MatchEndRecordBuilder) updates]) =
      _$MatchEndRecord;

  static MatchEndRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMatchEndRecordData({
  String matchName,
}) =>
    serializers.toFirestore(MatchEndRecord.serializer,
        MatchEndRecord((m) => m..matchName = matchName));
