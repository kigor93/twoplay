// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuantityRecord> _$quantityRecordSerializer =
    new _$QuantityRecordSerializer();

class _$QuantityRecordSerializer
    implements StructuredSerializer<QuantityRecord> {
  @override
  final Iterable<Type> types = const [QuantityRecord, _$QuantityRecord];
  @override
  final String wireName = 'QuantityRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, QuantityRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.quantity;
    if (value != null) {
      result
        ..add('Quantity')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.openMatch;
    if (value != null) {
      result
        ..add('OpenMatch')
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
  QuantityRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuantityRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Quantity':
          result.quantity.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'OpenMatch':
          result.openMatch = serializers.deserialize(value,
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

class _$QuantityRecord extends QuantityRecord {
  @override
  final BuiltList<String> quantity;
  @override
  final DocumentReference<Object> openMatch;
  @override
  final DocumentReference<Object> reference;

  factory _$QuantityRecord([void Function(QuantityRecordBuilder) updates]) =>
      (new QuantityRecordBuilder()..update(updates))._build();

  _$QuantityRecord._({this.quantity, this.openMatch, this.reference})
      : super._();

  @override
  QuantityRecord rebuild(void Function(QuantityRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuantityRecordBuilder toBuilder() =>
      new QuantityRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuantityRecord &&
        quantity == other.quantity &&
        openMatch == other.openMatch &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, quantity.hashCode), openMatch.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuantityRecord')
          ..add('quantity', quantity)
          ..add('openMatch', openMatch)
          ..add('reference', reference))
        .toString();
  }
}

class QuantityRecordBuilder
    implements Builder<QuantityRecord, QuantityRecordBuilder> {
  _$QuantityRecord _$v;

  ListBuilder<String> _quantity;
  ListBuilder<String> get quantity =>
      _$this._quantity ??= new ListBuilder<String>();
  set quantity(ListBuilder<String> quantity) => _$this._quantity = quantity;

  DocumentReference<Object> _openMatch;
  DocumentReference<Object> get openMatch => _$this._openMatch;
  set openMatch(DocumentReference<Object> openMatch) =>
      _$this._openMatch = openMatch;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  QuantityRecordBuilder() {
    QuantityRecord._initializeBuilder(this);
  }

  QuantityRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quantity = $v.quantity?.toBuilder();
      _openMatch = $v.openMatch;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuantityRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuantityRecord;
  }

  @override
  void update(void Function(QuantityRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  QuantityRecord build() => _build();

  _$QuantityRecord _build() {
    _$QuantityRecord _$result;
    try {
      _$result = _$v ??
          new _$QuantityRecord._(
              quantity: _quantity?.build(),
              openMatch: openMatch,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'quantity';
        _quantity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuantityRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
