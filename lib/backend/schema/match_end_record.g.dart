// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_end_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchEndRecord> _$matchEndRecordSerializer =
    new _$MatchEndRecordSerializer();

class _$MatchEndRecordSerializer
    implements StructuredSerializer<MatchEndRecord> {
  @override
  final Iterable<Type> types = const [MatchEndRecord, _$MatchEndRecord];
  @override
  final String wireName = 'MatchEndRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MatchEndRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.matchName;
    if (value != null) {
      result
        ..add('MatchName')
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
  MatchEndRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchEndRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'MatchName':
          result.matchName = serializers.deserialize(value,
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

class _$MatchEndRecord extends MatchEndRecord {
  @override
  final String matchName;
  @override
  final DocumentReference<Object> reference;

  factory _$MatchEndRecord([void Function(MatchEndRecordBuilder) updates]) =>
      (new MatchEndRecordBuilder()..update(updates))._build();

  _$MatchEndRecord._({this.matchName, this.reference}) : super._();

  @override
  MatchEndRecord rebuild(void Function(MatchEndRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchEndRecordBuilder toBuilder() =>
      new MatchEndRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchEndRecord &&
        matchName == other.matchName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, matchName.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MatchEndRecord')
          ..add('matchName', matchName)
          ..add('reference', reference))
        .toString();
  }
}

class MatchEndRecordBuilder
    implements Builder<MatchEndRecord, MatchEndRecordBuilder> {
  _$MatchEndRecord _$v;

  String _matchName;
  String get matchName => _$this._matchName;
  set matchName(String matchName) => _$this._matchName = matchName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MatchEndRecordBuilder() {
    MatchEndRecord._initializeBuilder(this);
  }

  MatchEndRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matchName = $v.matchName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchEndRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchEndRecord;
  }

  @override
  void update(void Function(MatchEndRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  MatchEndRecord build() => _build();

  _$MatchEndRecord _build() {
    final _$result = _$v ??
        new _$MatchEndRecord._(matchName: matchName, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
