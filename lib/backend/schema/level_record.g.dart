// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LevelRecord> _$levelRecordSerializer = new _$LevelRecordSerializer();

class _$LevelRecordSerializer implements StructuredSerializer<LevelRecord> {
  @override
  final Iterable<Type> types = const [LevelRecord, _$LevelRecord];
  @override
  final String wireName = 'LevelRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, LevelRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.levelList;
    if (value != null) {
      result
        ..add('LevelList')
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
  LevelRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LevelRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'LevelList':
          result.levelList.replace(serializers.deserialize(value,
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

class _$LevelRecord extends LevelRecord {
  @override
  final BuiltList<String> levelList;
  @override
  final DocumentReference<Object> reference;

  factory _$LevelRecord([void Function(LevelRecordBuilder) updates]) =>
      (new LevelRecordBuilder()..update(updates))._build();

  _$LevelRecord._({this.levelList, this.reference}) : super._();

  @override
  LevelRecord rebuild(void Function(LevelRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LevelRecordBuilder toBuilder() => new LevelRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LevelRecord &&
        levelList == other.levelList &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, levelList.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LevelRecord')
          ..add('levelList', levelList)
          ..add('reference', reference))
        .toString();
  }
}

class LevelRecordBuilder implements Builder<LevelRecord, LevelRecordBuilder> {
  _$LevelRecord _$v;

  ListBuilder<String> _levelList;
  ListBuilder<String> get levelList =>
      _$this._levelList ??= new ListBuilder<String>();
  set levelList(ListBuilder<String> levelList) => _$this._levelList = levelList;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LevelRecordBuilder() {
    LevelRecord._initializeBuilder(this);
  }

  LevelRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _levelList = $v.levelList?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LevelRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LevelRecord;
  }

  @override
  void update(void Function(LevelRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  LevelRecord build() => _build();

  _$LevelRecord _build() {
    _$LevelRecord _$result;
    try {
      _$result = _$v ??
          new _$LevelRecord._(
              levelList: _levelList?.build(), reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'levelList';
        _levelList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LevelRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
