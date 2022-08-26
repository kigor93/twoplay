// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_match_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OpenMatchRecord> _$openMatchRecordSerializer =
    new _$OpenMatchRecordSerializer();

class _$OpenMatchRecordSerializer
    implements StructuredSerializer<OpenMatchRecord> {
  @override
  final Iterable<Type> types = const [OpenMatchRecord, _$OpenMatchRecord];
  @override
  final String wireName = 'OpenMatchRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OpenMatchRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userCreator;
    if (value != null) {
      result
        ..add('UserCreator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.inside;
    if (value != null) {
      result
        ..add('Inside')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('Quantity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sportType;
    if (value != null) {
      result
        ..add('SportType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.level;
    if (value != null) {
      result
        ..add('Level')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locationAdress;
    if (value != null) {
      result
        ..add('LocationAdress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.createdtime;
    if (value != null) {
      result
        ..add('Createdtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dateAndTimeOfMatch;
    if (value != null) {
      result
        ..add('DateAndTimeOfMatch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('Username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userpic;
    if (value != null) {
      result
        ..add('Userpic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userBanner;
    if (value != null) {
      result
        ..add('UserBanner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.matchFollowers;
    if (value != null) {
      result
        ..add('MatchFollowers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.spicealMatch;
    if (value != null) {
      result
        ..add('SpicealMatch')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.matchRequest;
    if (value != null) {
      result
        ..add('MatchRequest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.finished;
    if (value != null) {
      result
        ..add('Finished')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.street;
    if (value != null) {
      result
        ..add('street')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.matchtime;
    if (value != null) {
      result
        ..add('matchtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  OpenMatchRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OpenMatchRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'UserCreator':
          result.userCreator = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Inside':
          result.inside = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'SportType':
          result.sportType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LocationAdress':
          result.locationAdress = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'Createdtime':
          result.createdtime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'DateAndTimeOfMatch':
          result.dateAndTimeOfMatch = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Userpic':
          result.userpic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'UserBanner':
          result.userBanner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'MatchFollowers':
          result.matchFollowers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'SpicealMatch':
          result.spicealMatch = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'MatchRequest':
          result.matchRequest.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Finished':
          result.finished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'matchtime':
          result.matchtime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$OpenMatchRecord extends OpenMatchRecord {
  @override
  final String description;
  @override
  final DocumentReference<Object> userCreator;
  @override
  final String inside;
  @override
  final String quantity;
  @override
  final String sportType;
  @override
  final String level;
  @override
  final LatLng locationAdress;
  @override
  final DateTime createdtime;
  @override
  final DateTime dateAndTimeOfMatch;
  @override
  final String username;
  @override
  final String userpic;
  @override
  final String userBanner;
  @override
  final BuiltList<DocumentReference<Object>> matchFollowers;
  @override
  final bool spicealMatch;
  @override
  final BuiltList<DocumentReference<Object>> matchRequest;
  @override
  final bool finished;
  @override
  final String street;
  @override
  final DateTime matchtime;
  @override
  final DocumentReference<Object> reference;

  factory _$OpenMatchRecord([void Function(OpenMatchRecordBuilder) updates]) =>
      (new OpenMatchRecordBuilder()..update(updates))._build();

  _$OpenMatchRecord._(
      {this.description,
      this.userCreator,
      this.inside,
      this.quantity,
      this.sportType,
      this.level,
      this.locationAdress,
      this.createdtime,
      this.dateAndTimeOfMatch,
      this.username,
      this.userpic,
      this.userBanner,
      this.matchFollowers,
      this.spicealMatch,
      this.matchRequest,
      this.finished,
      this.street,
      this.matchtime,
      this.reference})
      : super._();

  @override
  OpenMatchRecord rebuild(void Function(OpenMatchRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OpenMatchRecordBuilder toBuilder() =>
      new OpenMatchRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OpenMatchRecord &&
        description == other.description &&
        userCreator == other.userCreator &&
        inside == other.inside &&
        quantity == other.quantity &&
        sportType == other.sportType &&
        level == other.level &&
        locationAdress == other.locationAdress &&
        createdtime == other.createdtime &&
        dateAndTimeOfMatch == other.dateAndTimeOfMatch &&
        username == other.username &&
        userpic == other.userpic &&
        userBanner == other.userBanner &&
        matchFollowers == other.matchFollowers &&
        spicealMatch == other.spicealMatch &&
        matchRequest == other.matchRequest &&
        finished == other.finished &&
        street == other.street &&
        matchtime == other.matchtime &&
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
                                                                            $jc(
                                                                                0,
                                                                                description
                                                                                    .hashCode),
                                                                            userCreator
                                                                                .hashCode),
                                                                        inside
                                                                            .hashCode),
                                                                    quantity
                                                                        .hashCode),
                                                                sportType
                                                                    .hashCode),
                                                            level.hashCode),
                                                        locationAdress
                                                            .hashCode),
                                                    createdtime.hashCode),
                                                dateAndTimeOfMatch.hashCode),
                                            username.hashCode),
                                        userpic.hashCode),
                                    userBanner.hashCode),
                                matchFollowers.hashCode),
                            spicealMatch.hashCode),
                        matchRequest.hashCode),
                    finished.hashCode),
                street.hashCode),
            matchtime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OpenMatchRecord')
          ..add('description', description)
          ..add('userCreator', userCreator)
          ..add('inside', inside)
          ..add('quantity', quantity)
          ..add('sportType', sportType)
          ..add('level', level)
          ..add('locationAdress', locationAdress)
          ..add('createdtime', createdtime)
          ..add('dateAndTimeOfMatch', dateAndTimeOfMatch)
          ..add('username', username)
          ..add('userpic', userpic)
          ..add('userBanner', userBanner)
          ..add('matchFollowers', matchFollowers)
          ..add('spicealMatch', spicealMatch)
          ..add('matchRequest', matchRequest)
          ..add('finished', finished)
          ..add('street', street)
          ..add('matchtime', matchtime)
          ..add('reference', reference))
        .toString();
  }
}

class OpenMatchRecordBuilder
    implements Builder<OpenMatchRecord, OpenMatchRecordBuilder> {
  _$OpenMatchRecord _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DocumentReference<Object> _userCreator;
  DocumentReference<Object> get userCreator => _$this._userCreator;
  set userCreator(DocumentReference<Object> userCreator) =>
      _$this._userCreator = userCreator;

  String _inside;
  String get inside => _$this._inside;
  set inside(String inside) => _$this._inside = inside;

  String _quantity;
  String get quantity => _$this._quantity;
  set quantity(String quantity) => _$this._quantity = quantity;

  String _sportType;
  String get sportType => _$this._sportType;
  set sportType(String sportType) => _$this._sportType = sportType;

  String _level;
  String get level => _$this._level;
  set level(String level) => _$this._level = level;

  LatLng _locationAdress;
  LatLng get locationAdress => _$this._locationAdress;
  set locationAdress(LatLng locationAdress) =>
      _$this._locationAdress = locationAdress;

  DateTime _createdtime;
  DateTime get createdtime => _$this._createdtime;
  set createdtime(DateTime createdtime) => _$this._createdtime = createdtime;

  DateTime _dateAndTimeOfMatch;
  DateTime get dateAndTimeOfMatch => _$this._dateAndTimeOfMatch;
  set dateAndTimeOfMatch(DateTime dateAndTimeOfMatch) =>
      _$this._dateAndTimeOfMatch = dateAndTimeOfMatch;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _userpic;
  String get userpic => _$this._userpic;
  set userpic(String userpic) => _$this._userpic = userpic;

  String _userBanner;
  String get userBanner => _$this._userBanner;
  set userBanner(String userBanner) => _$this._userBanner = userBanner;

  ListBuilder<DocumentReference<Object>> _matchFollowers;
  ListBuilder<DocumentReference<Object>> get matchFollowers =>
      _$this._matchFollowers ??= new ListBuilder<DocumentReference<Object>>();
  set matchFollowers(ListBuilder<DocumentReference<Object>> matchFollowers) =>
      _$this._matchFollowers = matchFollowers;

  bool _spicealMatch;
  bool get spicealMatch => _$this._spicealMatch;
  set spicealMatch(bool spicealMatch) => _$this._spicealMatch = spicealMatch;

  ListBuilder<DocumentReference<Object>> _matchRequest;
  ListBuilder<DocumentReference<Object>> get matchRequest =>
      _$this._matchRequest ??= new ListBuilder<DocumentReference<Object>>();
  set matchRequest(ListBuilder<DocumentReference<Object>> matchRequest) =>
      _$this._matchRequest = matchRequest;

  bool _finished;
  bool get finished => _$this._finished;
  set finished(bool finished) => _$this._finished = finished;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  DateTime _matchtime;
  DateTime get matchtime => _$this._matchtime;
  set matchtime(DateTime matchtime) => _$this._matchtime = matchtime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OpenMatchRecordBuilder() {
    OpenMatchRecord._initializeBuilder(this);
  }

  OpenMatchRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _userCreator = $v.userCreator;
      _inside = $v.inside;
      _quantity = $v.quantity;
      _sportType = $v.sportType;
      _level = $v.level;
      _locationAdress = $v.locationAdress;
      _createdtime = $v.createdtime;
      _dateAndTimeOfMatch = $v.dateAndTimeOfMatch;
      _username = $v.username;
      _userpic = $v.userpic;
      _userBanner = $v.userBanner;
      _matchFollowers = $v.matchFollowers?.toBuilder();
      _spicealMatch = $v.spicealMatch;
      _matchRequest = $v.matchRequest?.toBuilder();
      _finished = $v.finished;
      _street = $v.street;
      _matchtime = $v.matchtime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OpenMatchRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OpenMatchRecord;
  }

  @override
  void update(void Function(OpenMatchRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  OpenMatchRecord build() => _build();

  _$OpenMatchRecord _build() {
    _$OpenMatchRecord _$result;
    try {
      _$result = _$v ??
          new _$OpenMatchRecord._(
              description: description,
              userCreator: userCreator,
              inside: inside,
              quantity: quantity,
              sportType: sportType,
              level: level,
              locationAdress: locationAdress,
              createdtime: createdtime,
              dateAndTimeOfMatch: dateAndTimeOfMatch,
              username: username,
              userpic: userpic,
              userBanner: userBanner,
              matchFollowers: _matchFollowers?.build(),
              spicealMatch: spicealMatch,
              matchRequest: _matchRequest?.build(),
              finished: finished,
              street: street,
              matchtime: matchtime,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'matchFollowers';
        _matchFollowers?.build();

        _$failedField = 'matchRequest';
        _matchRequest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OpenMatchRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
