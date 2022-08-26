import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get password;

  @nullable
  @BuiltValueField(wireName: 'Full_name')
  String get fullName;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'banner_photo')
  String get bannerPhoto;

  @nullable
  @BuiltValueField(wireName: 'UserDescription')
  String get userDescription;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: 'ReuesttoFriend')
  BuiltList<DocumentReference> get reuesttoFriend;

  @nullable
  @BuiltValueField(wireName: 'Followers')
  BuiltList<DocumentReference> get followers;

  @nullable
  @BuiltValueField(wireName: 'Followings')
  BuiltList<DocumentReference> get followings;

  @nullable
  @BuiltValueField(wireName: 'OpenMatches')
  BuiltList<DocumentReference> get openMatches;

  @nullable
  BuiltList<DocumentReference> get likedByUser;

  @nullable
  @BuiltValueField(wireName: 'FutureMatch')
  BuiltList<DocumentReference> get futureMatch;

  @nullable
  @BuiltValueField(wireName: 'Rating')
  int get rating;

  @nullable
  @BuiltValueField(wireName: 'Merchant')
  bool get merchant;

  @nullable
  @BuiltValueField(wireName: 'LocationforAdmin')
  DocumentReference get locationforAdmin;

  @nullable
  BuiltList<DocumentReference> get turnirs;

  @nullable
  BuiltList<DocumentReference> get futurematchaccept;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..password = ''
    ..fullName = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..bannerPhoto = ''
    ..userDescription = ''
    ..reuesttoFriend = ListBuilder()
    ..followers = ListBuilder()
    ..followings = ListBuilder()
    ..openMatches = ListBuilder()
    ..likedByUser = ListBuilder()
    ..futureMatch = ListBuilder()
    ..rating = 0
    ..merchant = false
    ..turnirs = ListBuilder()
    ..futurematchaccept = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => UsersRecord(
        (c) => c
          ..email = snapshot.data['email']
          ..password = snapshot.data['password']
          ..fullName = snapshot.data['Full_name']
          ..displayName = snapshot.data['display_name']
          ..photoUrl = snapshot.data['photo_url']
          ..uid = snapshot.data['uid']
          ..createdTime = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['created_time']))
          ..phoneNumber = snapshot.data['phone_number']
          ..bannerPhoto = snapshot.data['banner_photo']
          ..userDescription = snapshot.data['UserDescription']
          ..location = safeGet(() => LatLng(
                snapshot.data['_geoloc']['lat'],
                snapshot.data['_geoloc']['lng'],
              ))
          ..reuesttoFriend = safeGet(() =>
              ListBuilder(snapshot.data['ReuesttoFriend'].map((s) => toRef(s))))
          ..followers = safeGet(() =>
              ListBuilder(snapshot.data['Followers'].map((s) => toRef(s))))
          ..followings = safeGet(() =>
              ListBuilder(snapshot.data['Followings'].map((s) => toRef(s))))
          ..openMatches = safeGet(() =>
              ListBuilder(snapshot.data['OpenMatches'].map((s) => toRef(s))))
          ..likedByUser = safeGet(() =>
              ListBuilder(snapshot.data['likedByUser'].map((s) => toRef(s))))
          ..futureMatch = safeGet(() =>
              ListBuilder(snapshot.data['FutureMatch'].map((s) => toRef(s))))
          ..rating = snapshot.data['Rating']?.round()
          ..merchant = snapshot.data['Merchant']
          ..locationforAdmin =
              safeGet(() => toRef(snapshot.data['LocationforAdmin']))
          ..turnirs = safeGet(
              () => ListBuilder(snapshot.data['turnirs'].map((s) => toRef(s))))
          ..futurematchaccept = safeGet(() => ListBuilder(
              snapshot.data['futurematchaccept'].map((s) => toRef(s))))
          ..reference = UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String password,
  String fullName,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String bannerPhoto,
  String userDescription,
  LatLng location,
  int rating,
  bool merchant,
  DocumentReference locationforAdmin,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..password = password
          ..fullName = fullName
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..bannerPhoto = bannerPhoto
          ..userDescription = userDescription
          ..location = location
          ..reuesttoFriend = null
          ..followers = null
          ..followings = null
          ..openMatches = null
          ..likedByUser = null
          ..futureMatch = null
          ..rating = rating
          ..merchant = merchant
          ..locationforAdmin = locationforAdmin
          ..turnirs = null
          ..futurematchaccept = null));
