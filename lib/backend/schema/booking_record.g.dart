// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BookingRecord> _$bookingRecordSerializer =
    new _$BookingRecordSerializer();

class _$BookingRecordSerializer implements StructuredSerializer<BookingRecord> {
  @override
  final Iterable<Type> types = const [BookingRecord, _$BookingRecord];
  @override
  final String wireName = 'BookingRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BookingRecord object,
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
    value = object.user;
    if (value != null) {
      result
        ..add('User')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('DateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.accepted;
    if (value != null) {
      result
        ..add('Accepted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.useremail;
    if (value != null) {
      result
        ..add('useremail')
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
  BookingRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookingRecordBuilder();

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
        case 'User':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'DateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Accepted':
          result.accepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'useremail':
          result.useremail = serializers.deserialize(value,
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

class _$BookingRecord extends BookingRecord {
  @override
  final DocumentReference<Object> location;
  @override
  final DocumentReference<Object> user;
  @override
  final DateTime dateTime;
  @override
  final bool accepted;
  @override
  final String useremail;
  @override
  final DocumentReference<Object> reference;

  factory _$BookingRecord([void Function(BookingRecordBuilder) updates]) =>
      (new BookingRecordBuilder()..update(updates))._build();

  _$BookingRecord._(
      {this.location,
      this.user,
      this.dateTime,
      this.accepted,
      this.useremail,
      this.reference})
      : super._();

  @override
  BookingRecord rebuild(void Function(BookingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingRecordBuilder toBuilder() => new BookingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingRecord &&
        location == other.location &&
        user == other.user &&
        dateTime == other.dateTime &&
        accepted == other.accepted &&
        useremail == other.useremail &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, location.hashCode), user.hashCode),
                    dateTime.hashCode),
                accepted.hashCode),
            useremail.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingRecord')
          ..add('location', location)
          ..add('user', user)
          ..add('dateTime', dateTime)
          ..add('accepted', accepted)
          ..add('useremail', useremail)
          ..add('reference', reference))
        .toString();
  }
}

class BookingRecordBuilder
    implements Builder<BookingRecord, BookingRecordBuilder> {
  _$BookingRecord _$v;

  DocumentReference<Object> _location;
  DocumentReference<Object> get location => _$this._location;
  set location(DocumentReference<Object> location) =>
      _$this._location = location;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DateTime _dateTime;
  DateTime get dateTime => _$this._dateTime;
  set dateTime(DateTime dateTime) => _$this._dateTime = dateTime;

  bool _accepted;
  bool get accepted => _$this._accepted;
  set accepted(bool accepted) => _$this._accepted = accepted;

  String _useremail;
  String get useremail => _$this._useremail;
  set useremail(String useremail) => _$this._useremail = useremail;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BookingRecordBuilder() {
    BookingRecord._initializeBuilder(this);
  }

  BookingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _user = $v.user;
      _dateTime = $v.dateTime;
      _accepted = $v.accepted;
      _useremail = $v.useremail;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookingRecord;
  }

  @override
  void update(void Function(BookingRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingRecord build() => _build();

  _$BookingRecord _build() {
    final _$result = _$v ??
        new _$BookingRecord._(
            location: location,
            user: user,
            dateTime: dateTime,
            accepted: accepted,
            useremail: useremail,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
