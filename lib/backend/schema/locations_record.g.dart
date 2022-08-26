// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationsRecord> _$locationsRecordSerializer =
    new _$LocationsRecordSerializer();

class _$LocationsRecordSerializer
    implements StructuredSerializer<LocationsRecord> {
  @override
  final Iterable<Type> types = const [LocationsRecord, _$LocationsRecord];
  @override
  final String wireName = 'LocationsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, LocationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adress;
    if (value != null) {
      result
        ..add('Adress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('PhoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.userOwner;
    if (value != null) {
      result
        ..add('UserOwner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.sportType;
    if (value != null) {
      result
        ..add('SportType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  LocationsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Adress':
          result.adress = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'PhoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'likedByUser':
          result.likedByUser.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'UserOwner':
          result.userOwner = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'SportType':
          result.sportType = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$LocationsRecord extends LocationsRecord {
  @override
  final String name;
  @override
  final LatLng adress;
  @override
  final String phoneNumber;
  @override
  final String image;
  @override
  final String description;
  @override
  final BuiltList<DocumentReference<Object>> likedByUser;
  @override
  final DocumentReference<Object> userOwner;
  @override
  final DocumentReference<Object> sportType;
  @override
  final DocumentReference<Object> reference;

  factory _$LocationsRecord([void Function(LocationsRecordBuilder) updates]) =>
      (new LocationsRecordBuilder()..update(updates))._build();

  _$LocationsRecord._(
      {this.name,
      this.adress,
      this.phoneNumber,
      this.image,
      this.description,
      this.likedByUser,
      this.userOwner,
      this.sportType,
      this.reference})
      : super._();

  @override
  LocationsRecord rebuild(void Function(LocationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationsRecordBuilder toBuilder() =>
      new LocationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationsRecord &&
        name == other.name &&
        adress == other.adress &&
        phoneNumber == other.phoneNumber &&
        image == other.image &&
        description == other.description &&
        likedByUser == other.likedByUser &&
        userOwner == other.userOwner &&
        sportType == other.sportType &&
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
                            $jc($jc($jc(0, name.hashCode), adress.hashCode),
                                phoneNumber.hashCode),
                            image.hashCode),
                        description.hashCode),
                    likedByUser.hashCode),
                userOwner.hashCode),
            sportType.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocationsRecord')
          ..add('name', name)
          ..add('adress', adress)
          ..add('phoneNumber', phoneNumber)
          ..add('image', image)
          ..add('description', description)
          ..add('likedByUser', likedByUser)
          ..add('userOwner', userOwner)
          ..add('sportType', sportType)
          ..add('reference', reference))
        .toString();
  }
}

class LocationsRecordBuilder
    implements Builder<LocationsRecord, LocationsRecordBuilder> {
  _$LocationsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LatLng _adress;
  LatLng get adress => _$this._adress;
  set adress(LatLng adress) => _$this._adress = adress;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<DocumentReference<Object>> _likedByUser;
  ListBuilder<DocumentReference<Object>> get likedByUser =>
      _$this._likedByUser ??= new ListBuilder<DocumentReference<Object>>();
  set likedByUser(ListBuilder<DocumentReference<Object>> likedByUser) =>
      _$this._likedByUser = likedByUser;

  DocumentReference<Object> _userOwner;
  DocumentReference<Object> get userOwner => _$this._userOwner;
  set userOwner(DocumentReference<Object> userOwner) =>
      _$this._userOwner = userOwner;

  DocumentReference<Object> _sportType;
  DocumentReference<Object> get sportType => _$this._sportType;
  set sportType(DocumentReference<Object> sportType) =>
      _$this._sportType = sportType;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LocationsRecordBuilder() {
    LocationsRecord._initializeBuilder(this);
  }

  LocationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _adress = $v.adress;
      _phoneNumber = $v.phoneNumber;
      _image = $v.image;
      _description = $v.description;
      _likedByUser = $v.likedByUser?.toBuilder();
      _userOwner = $v.userOwner;
      _sportType = $v.sportType;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationsRecord;
  }

  @override
  void update(void Function(LocationsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  LocationsRecord build() => _build();

  _$LocationsRecord _build() {
    _$LocationsRecord _$result;
    try {
      _$result = _$v ??
          new _$LocationsRecord._(
              name: name,
              adress: adress,
              phoneNumber: phoneNumber,
              image: image,
              description: description,
              likedByUser: _likedByUser?.build(),
              userOwner: userOwner,
              sportType: sportType,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'likedByUser';
        _likedByUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocationsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
