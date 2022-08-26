// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inside_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InsideRecord> _$insideRecordSerializer =
    new _$InsideRecordSerializer();

class _$InsideRecordSerializer implements StructuredSerializer<InsideRecord> {
  @override
  final Iterable<Type> types = const [InsideRecord, _$InsideRecord];
  @override
  final String wireName = 'InsideRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, InsideRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.insider;
    if (value != null) {
      result
        ..add('Insider')
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
  InsideRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InsideRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Insider':
          result.insider.replace(serializers.deserialize(value,
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

class _$InsideRecord extends InsideRecord {
  @override
  final BuiltList<String> insider;
  @override
  final DocumentReference<Object> reference;

  factory _$InsideRecord([void Function(InsideRecordBuilder) updates]) =>
      (new InsideRecordBuilder()..update(updates))._build();

  _$InsideRecord._({this.insider, this.reference}) : super._();

  @override
  InsideRecord rebuild(void Function(InsideRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InsideRecordBuilder toBuilder() => new InsideRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InsideRecord &&
        insider == other.insider &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, insider.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InsideRecord')
          ..add('insider', insider)
          ..add('reference', reference))
        .toString();
  }
}

class InsideRecordBuilder
    implements Builder<InsideRecord, InsideRecordBuilder> {
  _$InsideRecord _$v;

  ListBuilder<String> _insider;
  ListBuilder<String> get insider =>
      _$this._insider ??= new ListBuilder<String>();
  set insider(ListBuilder<String> insider) => _$this._insider = insider;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  InsideRecordBuilder() {
    InsideRecord._initializeBuilder(this);
  }

  InsideRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _insider = $v.insider?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InsideRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InsideRecord;
  }

  @override
  void update(void Function(InsideRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  InsideRecord build() => _build();

  _$InsideRecord _build() {
    _$InsideRecord _$result;
    try {
      _$result = _$v ??
          new _$InsideRecord._(
              insider: _insider?.build(), reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'insider';
        _insider?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InsideRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
