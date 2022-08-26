import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tournament_record.g.dart';

abstract class TournamentRecord
    implements Built<TournamentRecord, TournamentRecordBuilder> {
  static Serializer<TournamentRecord> get serializer =>
      _$tournamentRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Location')
  DocumentReference get location;

  @nullable
  @BuiltValueField(wireName: 'UserApoint')
  BuiltList<DocumentReference> get userApoint;

  @nullable
  @BuiltValueField(wireName: 'Date')
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: 'Image')
  String get image;

  @nullable
  @BuiltValueField(wireName: 'Descr')
  String get descr;

  @nullable
  String get quantityy;

  @nullable
  @BuiltValueField(wireName: 'Sporttype')
  String get sporttype;

  @nullable
  @BuiltValueField(wireName: 'Adresslat')
  LatLng get adresslat;

  @nullable
  String get adresstring;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TournamentRecordBuilder builder) => builder
    ..userApoint = ListBuilder()
    ..image = ''
    ..descr = ''
    ..quantityy = ''
    ..sporttype = ''
    ..adresstring = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tournament');

  static Stream<TournamentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TournamentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TournamentRecord._();
  factory TournamentRecord([void Function(TournamentRecordBuilder) updates]) =
      _$TournamentRecord;

  static TournamentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTournamentRecordData({
  DocumentReference location,
  DateTime date,
  String image,
  String descr,
  String quantityy,
  String sporttype,
  LatLng adresslat,
  String adresstring,
}) =>
    serializers.toFirestore(
        TournamentRecord.serializer,
        TournamentRecord((t) => t
          ..location = location
          ..userApoint = null
          ..date = date
          ..image = image
          ..descr = descr
          ..quantityy = quantityy
          ..sporttype = sporttype
          ..adresslat = adresslat
          ..adresstring = adresstring));
