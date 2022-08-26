// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CitiesRecord> _$citiesRecordSerializer =
    new _$CitiesRecordSerializer();

class _$CitiesRecordSerializer implements StructuredSerializer<CitiesRecord> {
  @override
  final Iterable<Type> types = const [CitiesRecord, _$CitiesRecord];
  @override
  final String wireName = 'CitiesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CitiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.cities;
    if (value != null) {
      result
        ..add('Cities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  CitiesRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CitiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Cities':
          result.cities = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
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

class _$CitiesRecord extends CitiesRecord {
  @override
  final LatLng cities;
  @override
  final DocumentReference<Object> reference;

  factory _$CitiesRecord([void Function(CitiesRecordBuilder) updates]) =>
      (new CitiesRecordBuilder()..update(updates))._build();

  _$CitiesRecord._({this.cities, this.reference}) : super._();

  @override
  CitiesRecord rebuild(void Function(CitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CitiesRecordBuilder toBuilder() => new CitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CitiesRecord &&
        cities == other.cities &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, cities.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CitiesRecord')
          ..add('cities', cities)
          ..add('reference', reference))
        .toString();
  }
}

class CitiesRecordBuilder
    implements Builder<CitiesRecord, CitiesRecordBuilder> {
  _$CitiesRecord _$v;

  LatLng _cities;
  LatLng get cities => _$this._cities;
  set cities(LatLng cities) => _$this._cities = cities;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CitiesRecordBuilder() {
    CitiesRecord._initializeBuilder(this);
  }

  CitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cities = $v.cities;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CitiesRecord;
  }

  @override
  void update(void Function(CitiesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  CitiesRecord build() => _build();

  _$CitiesRecord _build() {
    final _$result =
        _$v ?? new _$CitiesRecord._(cities: cities, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
