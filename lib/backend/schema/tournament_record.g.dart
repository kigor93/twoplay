// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TournamentRecord> _$tournamentRecordSerializer =
    new _$TournamentRecordSerializer();

class _$TournamentRecordSerializer
    implements StructuredSerializer<TournamentRecord> {
  @override
  final Iterable<Type> types = const [TournamentRecord, _$TournamentRecord];
  @override
  final String wireName = 'TournamentRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TournamentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.location;
    if (value != null) {
      result
        ..add('Location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userApoint;
    if (value != null) {
      result
        ..add('UserApoint')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descr;
    if (value != null) {
      result
        ..add('Descr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantityy;
    if (value != null) {
      result
        ..add('quantityy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sporttype;
    if (value != null) {
      result
        ..add('Sporttype')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adresslat;
    if (value != null) {
      result
        ..add('Adresslat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.adresstring;
    if (value != null) {
      result
        ..add('adresstring')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  TournamentRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TournamentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Location':
          result.location = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'UserApoint':
          result.userApoint.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Descr':
          result.descr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantityy':
          result.quantityy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Sporttype':
          result.sporttype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Adresslat':
          result.adresslat = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'adresstring':
          result.adresstring = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$TournamentRecord extends TournamentRecord {
  @override
  final DocumentReference<Object> location;
  @override
  final BuiltList<DocumentReference<Object>> userApoint;
  @override
  final DateTime date;
  @override
  final String image;
  @override
  final String descr;
  @override
  final String quantityy;
  @override
  final String sporttype;
  @override
  final LatLng adresslat;
  @override
  final String adresstring;
  @override
  final DocumentReference<Object> reference;

  factory _$TournamentRecord(
          [void Function(TournamentRecordBuilder) updates]) =>
      (new TournamentRecordBuilder()..update(updates))._build();

  _$TournamentRecord._(
      {this.location,
      this.userApoint,
      this.date,
      this.image,
      this.descr,
      this.quantityy,
      this.sporttype,
      this.adresslat,
      this.adresstring,
      this.reference})
      : super._();

  @override
  TournamentRecord rebuild(void Function(TournamentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TournamentRecordBuilder toBuilder() =>
      new TournamentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TournamentRecord &&
        location == other.location &&
        userApoint == other.userApoint &&
        date == other.date &&
        image == other.image &&
        descr == other.descr &&
        quantityy == other.quantityy &&
        sporttype == other.sporttype &&
        adresslat == other.adresslat &&
        adresstring == other.adresstring &&
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
                                    $jc($jc(0, location.hashCode),
                                        userApoint.hashCode),
                                    date.hashCode),
                                image.hashCode),
                            descr.hashCode),
                        quantityy.hashCode),
                    sporttype.hashCode),
                adresslat.hashCode),
            adresstring.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TournamentRecord')
          ..add('location', location)
          ..add('userApoint', userApoint)
          ..add('date', date)
          ..add('image', image)
          ..add('descr', descr)
          ..add('quantityy', quantityy)
          ..add('sporttype', sporttype)
          ..add('adresslat', adresslat)
          ..add('adresstring', adresstring)
          ..add('reference', reference))
        .toString();
  }
}

class TournamentRecordBuilder
    implements Builder<TournamentRecord, TournamentRecordBuilder> {
  _$TournamentRecord _$v;

  DocumentReference<Object> _location;
  DocumentReference<Object> get location => _$this._location;
  set location(DocumentReference<Object> location) =>
      _$this._location = location;

  ListBuilder<DocumentReference<Object>> _userApoint;
  ListBuilder<DocumentReference<Object>> get userApoint =>
      _$this._userApoint ??= new ListBuilder<DocumentReference<Object>>();
  set userApoint(ListBuilder<DocumentReference<Object>> userApoint) =>
      _$this._userApoint = userApoint;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _descr;
  String get descr => _$this._descr;
  set descr(String descr) => _$this._descr = descr;

  String _quantityy;
  String get quantityy => _$this._quantityy;
  set quantityy(String quantityy) => _$this._quantityy = quantityy;

  String _sporttype;
  String get sporttype => _$this._sporttype;
  set sporttype(String sporttype) => _$this._sporttype = sporttype;

  LatLng _adresslat;
  LatLng get adresslat => _$this._adresslat;
  set adresslat(LatLng adresslat) => _$this._adresslat = adresslat;

  String _adresstring;
  String get adresstring => _$this._adresstring;
  set adresstring(String adresstring) => _$this._adresstring = adresstring;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TournamentRecordBuilder() {
    TournamentRecord._initializeBuilder(this);
  }

  TournamentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _userApoint = $v.userApoint?.toBuilder();
      _date = $v.date;
      _image = $v.image;
      _descr = $v.descr;
      _quantityy = $v.quantityy;
      _sporttype = $v.sporttype;
      _adresslat = $v.adresslat;
      _adresstring = $v.adresstring;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TournamentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TournamentRecord;
  }

  @override
  void update(void Function(TournamentRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  TournamentRecord build() => _build();

  _$TournamentRecord _build() {
    _$TournamentRecord _$result;
    try {
      _$result = _$v ??
          new _$TournamentRecord._(
              location: location,
              userApoint: _userApoint?.build(),
              date: date,
              image: image,
              descr: descr,
              quantityy: quantityy,
              sporttype: sporttype,
              adresslat: adresslat,
              adresstring: adresstring,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userApoint';
        _userApoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TournamentRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
