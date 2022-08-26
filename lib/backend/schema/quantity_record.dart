import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'quantity_record.g.dart';

abstract class QuantityRecord
    implements Built<QuantityRecord, QuantityRecordBuilder> {
  static Serializer<QuantityRecord> get serializer =>
      _$quantityRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Quantity')
  BuiltList<String> get quantity;

  @nullable
  @BuiltValueField(wireName: 'OpenMatch')
  DocumentReference get openMatch;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(QuantityRecordBuilder builder) =>
      builder..quantity = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Quantity');

  static Stream<QuantityRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<QuantityRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  QuantityRecord._();
  factory QuantityRecord([void Function(QuantityRecordBuilder) updates]) =
      _$QuantityRecord;

  static QuantityRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createQuantityRecordData({
  DocumentReference openMatch,
}) =>
    serializers.toFirestore(
        QuantityRecord.serializer,
        QuantityRecord((q) => q
          ..quantity = null
          ..openMatch = openMatch));
