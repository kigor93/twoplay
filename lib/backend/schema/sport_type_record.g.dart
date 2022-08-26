// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_type_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SportTypeRecord> _$sportTypeRecordSerializer =
    new _$SportTypeRecordSerializer();

class _$SportTypeRecordSerializer
    implements StructuredSerializer<SportTypeRecord> {
  @override
  final Iterable<Type> types = const [SportTypeRecord, _$SportTypeRecord];
  @override
  final String wireName = 'SportTypeRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SportTypeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.sportname;
    if (value != null) {
      result
        ..add('Sportname')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  SportTypeRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SportTypeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Sportname':
          result.sportname.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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

class _$SportTypeRecord extends SportTypeRecord {
  @override
  final BuiltList<String> sportname;
  @override
  final DocumentReference<Object> reference;

  factory _$SportTypeRecord([void Function(SportTypeRecordBuilder) updates]) =>
      (new SportTypeRecordBuilder()..update(updates))._build();

  _$SportTypeRecord._({this.sportname, this.reference}) : super._();

  @override
  SportTypeRecord rebuild(void Function(SportTypeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SportTypeRecordBuilder toBuilder() =>
      new SportTypeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SportTypeRecord &&
        sportname == other.sportname &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sportname.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SportTypeRecord')
          ..add('sportname', sportname)
          ..add('reference', reference))
        .toString();
  }
}

class SportTypeRecordBuilder
    implements Builder<SportTypeRecord, SportTypeRecordBuilder> {
  _$SportTypeRecord _$v;

  ListBuilder<String> _sportname;
  ListBuilder<String> get sportname =>
      _$this._sportname ??= new ListBuilder<String>();
  set sportname(ListBuilder<String> sportname) => _$this._sportname = sportname;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SportTypeRecordBuilder() {
    SportTypeRecord._initializeBuilder(this);
  }

  SportTypeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sportname = $v.sportname?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SportTypeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SportTypeRecord;
  }

  @override
  void update(void Function(SportTypeRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  SportTypeRecord build() => _build();

  _$SportTypeRecord _build() {
    _$SportTypeRecord _$result;
    try {
      _$result = _$v ??
          new _$SportTypeRecord._(
              sportname: _sportname?.build(), reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sportname';
        _sportname?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SportTypeRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
