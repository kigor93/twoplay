import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'open_match_record.g.dart';

abstract class OpenMatchRecord
    implements Built<OpenMatchRecord, OpenMatchRecordBuilder> {
  static Serializer<OpenMatchRecord> get serializer =>
      _$openMatchRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Description')
  String get description;

  @nullable
  @BuiltValueField(wireName: 'UserCreator')
  DocumentReference get userCreator;

  @nullable
  @BuiltValueField(wireName: 'Inside')
  String get inside;

  @nullable
  @BuiltValueField(wireName: 'Quantity')
  String get quantity;

  @nullable
  @BuiltValueField(wireName: 'SportType')
  String get sportType;

  @nullable
  @BuiltValueField(wireName: 'Level')
  String get level;

  @nullable
  @BuiltValueField(wireName: 'LocationAdress')
  LatLng get locationAdress;

  @nullable
  @BuiltValueField(wireName: 'Createdtime')
  DateTime get createdtime;

  @nullable
  @BuiltValueField(wireName: 'DateAndTimeOfMatch')
  DateTime get dateAndTimeOfMatch;

  @nullable
  @BuiltValueField(wireName: 'Username')
  String get username;

  @nullable
  @BuiltValueField(wireName: 'Userpic')
  String get userpic;

  @nullable
  @BuiltValueField(wireName: 'UserBanner')
  String get userBanner;

  @nullable
  @BuiltValueField(wireName: 'MatchFollowers')
  BuiltList<DocumentReference> get matchFollowers;

  @nullable
  @BuiltValueField(wireName: 'SpicealMatch')
  bool get spicealMatch;

  @nullable
  @BuiltValueField(wireName: 'MatchRequest')
  BuiltList<DocumentReference> get matchRequest;

  @nullable
  @BuiltValueField(wireName: 'Finished')
  bool get finished;

  @nullable
  String get street;

  @nullable
  DateTime get matchtime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OpenMatchRecordBuilder builder) => builder
    ..description = ''
    ..inside = ''
    ..quantity = ''
    ..sportType = ''
    ..level = ''
    ..username = ''
    ..userpic = ''
    ..userBanner = ''
    ..matchFollowers = ListBuilder()
    ..spicealMatch = false
    ..matchRequest = ListBuilder()
    ..finished = false
    ..street = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('OpenMatch');

  static Stream<OpenMatchRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OpenMatchRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static OpenMatchRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      OpenMatchRecord(
        (c) => c
          ..description = snapshot.data['Description']
          ..userCreator = safeGet(() => toRef(snapshot.data['UserCreator']))
          ..inside = snapshot.data['Inside']
          ..quantity = snapshot.data['Quantity']
          ..sportType = snapshot.data['SportType']
          ..level = snapshot.data['Level']
          ..locationAdress = safeGet(() => LatLng(
                snapshot.data['_geoloc']['lat'],
                snapshot.data['_geoloc']['lng'],
              ))
          ..createdtime = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['Createdtime']))
          ..dateAndTimeOfMatch = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(
                  snapshot.data['DateAndTimeOfMatch']))
          ..username = snapshot.data['Username']
          ..userpic = snapshot.data['Userpic']
          ..userBanner = snapshot.data['UserBanner']
          ..matchFollowers = safeGet(() =>
              ListBuilder(snapshot.data['MatchFollowers'].map((s) => toRef(s))))
          ..spicealMatch = snapshot.data['SpicealMatch']
          ..matchRequest = safeGet(() =>
              ListBuilder(snapshot.data['MatchRequest'].map((s) => toRef(s))))
          ..finished = snapshot.data['Finished']
          ..street = snapshot.data['street']
          ..matchtime = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['matchtime']))
          ..reference = OpenMatchRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<OpenMatchRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'OpenMatch',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  OpenMatchRecord._();
  factory OpenMatchRecord([void Function(OpenMatchRecordBuilder) updates]) =
      _$OpenMatchRecord;

  static OpenMatchRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOpenMatchRecordData({
  String description,
  DocumentReference userCreator,
  String inside,
  String quantity,
  String sportType,
  String level,
  LatLng locationAdress,
  DateTime createdtime,
  DateTime dateAndTimeOfMatch,
  String username,
  String userpic,
  String userBanner,
  bool spicealMatch,
  bool finished,
  String street,
  DateTime matchtime,
}) =>
    serializers.toFirestore(
        OpenMatchRecord.serializer,
        OpenMatchRecord((o) => o
          ..description = description
          ..userCreator = userCreator
          ..inside = inside
          ..quantity = quantity
          ..sportType = sportType
          ..level = level
          ..locationAdress = locationAdress
          ..createdtime = createdtime
          ..dateAndTimeOfMatch = dateAndTimeOfMatch
          ..username = username
          ..userpic = userpic
          ..userBanner = userBanner
          ..matchFollowers = null
          ..spicealMatch = spicealMatch
          ..matchRequest = null
          ..finished = finished
          ..street = street
          ..matchtime = matchtime));
