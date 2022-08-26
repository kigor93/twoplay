// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('Full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bannerPhoto;
    if (value != null) {
      result
        ..add('banner_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userDescription;
    if (value != null) {
      result
        ..add('UserDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.reuesttoFriend;
    if (value != null) {
      result
        ..add('ReuesttoFriend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.followers;
    if (value != null) {
      result
        ..add('Followers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.followings;
    if (value != null) {
      result
        ..add('Followings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.openMatches;
    if (value != null) {
      result
        ..add('OpenMatches')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.likedByUser;
    if (value != null) {
      result
        ..add('likedByUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.futureMatch;
    if (value != null) {
      result
        ..add('FutureMatch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('Rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.merchant;
    if (value != null) {
      result
        ..add('Merchant')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.locationforAdmin;
    if (value != null) {
      result
        ..add('LocationforAdmin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.turnirs;
    if (value != null) {
      result
        ..add('turnirs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.futurematchaccept;
    if (value != null) {
      result
        ..add('futurematchaccept')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'banner_photo':
          result.bannerPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'UserDescription':
          result.userDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'ReuesttoFriend':
          result.reuesttoFriend.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Followers':
          result.followers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Followings':
          result.followings.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'OpenMatches':
          result.openMatches.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'likedByUser':
          result.likedByUser.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'FutureMatch':
          result.futureMatch.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Merchant':
          result.merchant = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'LocationforAdmin':
          result.locationforAdmin = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'turnirs':
          result.turnirs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'futurematchaccept':
          result.futurematchaccept.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String email;
  @override
  final String password;
  @override
  final String fullName;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String bannerPhoto;
  @override
  final String userDescription;
  @override
  final LatLng location;
  @override
  final BuiltList<DocumentReference<Object>> reuesttoFriend;
  @override
  final BuiltList<DocumentReference<Object>> followers;
  @override
  final BuiltList<DocumentReference<Object>> followings;
  @override
  final BuiltList<DocumentReference<Object>> openMatches;
  @override
  final BuiltList<DocumentReference<Object>> likedByUser;
  @override
  final BuiltList<DocumentReference<Object>> futureMatch;
  @override
  final int rating;
  @override
  final bool merchant;
  @override
  final DocumentReference<Object> locationforAdmin;
  @override
  final BuiltList<DocumentReference<Object>> turnirs;
  @override
  final BuiltList<DocumentReference<Object>> futurematchaccept;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.password,
      this.fullName,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.bannerPhoto,
      this.userDescription,
      this.location,
      this.reuesttoFriend,
      this.followers,
      this.followings,
      this.openMatches,
      this.likedByUser,
      this.futureMatch,
      this.rating,
      this.merchant,
      this.locationforAdmin,
      this.turnirs,
      this.futurematchaccept,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        password == other.password &&
        fullName == other.fullName &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        bannerPhoto == other.bannerPhoto &&
        userDescription == other.userDescription &&
        location == other.location &&
        reuesttoFriend == other.reuesttoFriend &&
        followers == other.followers &&
        followings == other.followings &&
        openMatches == other.openMatches &&
        likedByUser == other.likedByUser &&
        futureMatch == other.futureMatch &&
        rating == other.rating &&
        merchant == other.merchant &&
        locationforAdmin == other.locationforAdmin &&
        turnirs == other.turnirs &&
        futurematchaccept == other.futurematchaccept &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc(0, email.hashCode), password.hashCode), fullName.hashCode), displayName.hashCode),
                                                                                photoUrl.hashCode),
                                                                            uid.hashCode),
                                                                        createdTime.hashCode),
                                                                    phoneNumber.hashCode),
                                                                bannerPhoto.hashCode),
                                                            userDescription.hashCode),
                                                        location.hashCode),
                                                    reuesttoFriend.hashCode),
                                                followers.hashCode),
                                            followings.hashCode),
                                        openMatches.hashCode),
                                    likedByUser.hashCode),
                                futureMatch.hashCode),
                            rating.hashCode),
                        merchant.hashCode),
                    locationforAdmin.hashCode),
                turnirs.hashCode),
            futurematchaccept.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('password', password)
          ..add('fullName', fullName)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('bannerPhoto', bannerPhoto)
          ..add('userDescription', userDescription)
          ..add('location', location)
          ..add('reuesttoFriend', reuesttoFriend)
          ..add('followers', followers)
          ..add('followings', followings)
          ..add('openMatches', openMatches)
          ..add('likedByUser', likedByUser)
          ..add('futureMatch', futureMatch)
          ..add('rating', rating)
          ..add('merchant', merchant)
          ..add('locationforAdmin', locationforAdmin)
          ..add('turnirs', turnirs)
          ..add('futurematchaccept', futurematchaccept)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _bannerPhoto;
  String get bannerPhoto => _$this._bannerPhoto;
  set bannerPhoto(String bannerPhoto) => _$this._bannerPhoto = bannerPhoto;

  String _userDescription;
  String get userDescription => _$this._userDescription;
  set userDescription(String userDescription) =>
      _$this._userDescription = userDescription;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  ListBuilder<DocumentReference<Object>> _reuesttoFriend;
  ListBuilder<DocumentReference<Object>> get reuesttoFriend =>
      _$this._reuesttoFriend ??= new ListBuilder<DocumentReference<Object>>();
  set reuesttoFriend(ListBuilder<DocumentReference<Object>> reuesttoFriend) =>
      _$this._reuesttoFriend = reuesttoFriend;

  ListBuilder<DocumentReference<Object>> _followers;
  ListBuilder<DocumentReference<Object>> get followers =>
      _$this._followers ??= new ListBuilder<DocumentReference<Object>>();
  set followers(ListBuilder<DocumentReference<Object>> followers) =>
      _$this._followers = followers;

  ListBuilder<DocumentReference<Object>> _followings;
  ListBuilder<DocumentReference<Object>> get followings =>
      _$this._followings ??= new ListBuilder<DocumentReference<Object>>();
  set followings(ListBuilder<DocumentReference<Object>> followings) =>
      _$this._followings = followings;

  ListBuilder<DocumentReference<Object>> _openMatches;
  ListBuilder<DocumentReference<Object>> get openMatches =>
      _$this._openMatches ??= new ListBuilder<DocumentReference<Object>>();
  set openMatches(ListBuilder<DocumentReference<Object>> openMatches) =>
      _$this._openMatches = openMatches;

  ListBuilder<DocumentReference<Object>> _likedByUser;
  ListBuilder<DocumentReference<Object>> get likedByUser =>
      _$this._likedByUser ??= new ListBuilder<DocumentReference<Object>>();
  set likedByUser(ListBuilder<DocumentReference<Object>> likedByUser) =>
      _$this._likedByUser = likedByUser;

  ListBuilder<DocumentReference<Object>> _futureMatch;
  ListBuilder<DocumentReference<Object>> get futureMatch =>
      _$this._futureMatch ??= new ListBuilder<DocumentReference<Object>>();
  set futureMatch(ListBuilder<DocumentReference<Object>> futureMatch) =>
      _$this._futureMatch = futureMatch;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  bool _merchant;
  bool get merchant => _$this._merchant;
  set merchant(bool merchant) => _$this._merchant = merchant;

  DocumentReference<Object> _locationforAdmin;
  DocumentReference<Object> get locationforAdmin => _$this._locationforAdmin;
  set locationforAdmin(DocumentReference<Object> locationforAdmin) =>
      _$this._locationforAdmin = locationforAdmin;

  ListBuilder<DocumentReference<Object>> _turnirs;
  ListBuilder<DocumentReference<Object>> get turnirs =>
      _$this._turnirs ??= new ListBuilder<DocumentReference<Object>>();
  set turnirs(ListBuilder<DocumentReference<Object>> turnirs) =>
      _$this._turnirs = turnirs;

  ListBuilder<DocumentReference<Object>> _futurematchaccept;
  ListBuilder<DocumentReference<Object>> get futurematchaccept =>
      _$this._futurematchaccept ??=
          new ListBuilder<DocumentReference<Object>>();
  set futurematchaccept(
          ListBuilder<DocumentReference<Object>> futurematchaccept) =>
      _$this._futurematchaccept = futurematchaccept;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _fullName = $v.fullName;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _bannerPhoto = $v.bannerPhoto;
      _userDescription = $v.userDescription;
      _location = $v.location;
      _reuesttoFriend = $v.reuesttoFriend?.toBuilder();
      _followers = $v.followers?.toBuilder();
      _followings = $v.followings?.toBuilder();
      _openMatches = $v.openMatches?.toBuilder();
      _likedByUser = $v.likedByUser?.toBuilder();
      _futureMatch = $v.futureMatch?.toBuilder();
      _rating = $v.rating;
      _merchant = $v.merchant;
      _locationforAdmin = $v.locationforAdmin;
      _turnirs = $v.turnirs?.toBuilder();
      _futurematchaccept = $v.futurematchaccept?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              password: password,
              fullName: fullName,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              bannerPhoto: bannerPhoto,
              userDescription: userDescription,
              location: location,
              reuesttoFriend: _reuesttoFriend?.build(),
              followers: _followers?.build(),
              followings: _followings?.build(),
              openMatches: _openMatches?.build(),
              likedByUser: _likedByUser?.build(),
              futureMatch: _futureMatch?.build(),
              rating: rating,
              merchant: merchant,
              locationforAdmin: locationforAdmin,
              turnirs: _turnirs?.build(),
              futurematchaccept: _futurematchaccept?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reuesttoFriend';
        _reuesttoFriend?.build();
        _$failedField = 'followers';
        _followers?.build();
        _$failedField = 'followings';
        _followings?.build();
        _$failedField = 'openMatches';
        _openMatches?.build();
        _$failedField = 'likedByUser';
        _likedByUser?.build();
        _$failedField = 'futureMatch';
        _futureMatch?.build();

        _$failedField = 'turnirs';
        _turnirs?.build();
        _$failedField = 'futurematchaccept';
        _futurematchaccept?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
