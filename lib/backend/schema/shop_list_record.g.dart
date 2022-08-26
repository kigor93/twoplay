// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShopListRecord> _$shopListRecordSerializer =
    new _$ShopListRecordSerializer();

class _$ShopListRecordSerializer
    implements StructuredSerializer<ShopListRecord> {
  @override
  final Iterable<Type> types = const [ShopListRecord, _$ShopListRecord];
  @override
  final String wireName = 'ShopListRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ShopListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adress;
    if (value != null) {
      result
        ..add('adress')
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
  ShopListRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShopListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adress':
          result.adress = serializers.deserialize(value,
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

class _$ShopListRecord extends ShopListRecord {
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;
  @override
  final LatLng adress;
  @override
  final DocumentReference<Object> reference;

  factory _$ShopListRecord([void Function(ShopListRecordBuilder) updates]) =>
      (new ShopListRecordBuilder()..update(updates))._build();

  _$ShopListRecord._(
      {this.name, this.description, this.image, this.adress, this.reference})
      : super._();

  @override
  ShopListRecord rebuild(void Function(ShopListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShopListRecordBuilder toBuilder() =>
      new ShopListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopListRecord &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        adress == other.adress &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), description.hashCode),
                image.hashCode),
            adress.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShopListRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('adress', adress)
          ..add('reference', reference))
        .toString();
  }
}

class ShopListRecordBuilder
    implements Builder<ShopListRecord, ShopListRecordBuilder> {
  _$ShopListRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  LatLng _adress;
  LatLng get adress => _$this._adress;
  set adress(LatLng adress) => _$this._adress = adress;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ShopListRecordBuilder() {
    ShopListRecord._initializeBuilder(this);
  }

  ShopListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _image = $v.image;
      _adress = $v.adress;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShopListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShopListRecord;
  }

  @override
  void update(void Function(ShopListRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  ShopListRecord build() => _build();

  _$ShopListRecord _build() {
    final _$result = _$v ??
        new _$ShopListRecord._(
            name: name,
            description: description,
            image: image,
            adress: adress,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
