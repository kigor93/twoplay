import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'shop_list_record.g.dart';

abstract class ShopListRecord
    implements Built<ShopListRecord, ShopListRecordBuilder> {
  static Serializer<ShopListRecord> get serializer =>
      _$shopListRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  String get image;

  @nullable
  LatLng get adress;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ShopListRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ShopList');

  static Stream<ShopListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ShopListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ShopListRecord._();
  factory ShopListRecord([void Function(ShopListRecordBuilder) updates]) =
      _$ShopListRecord;

  static ShopListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createShopListRecordData({
  String name,
  String description,
  String image,
  LatLng adress,
}) =>
    serializers.toFirestore(
        ShopListRecord.serializer,
        ShopListRecord((s) => s
          ..name = name
          ..description = description
          ..image = image
          ..adress = adress));
