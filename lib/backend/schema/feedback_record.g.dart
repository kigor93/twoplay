// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbackRecord> _$feedbackRecordSerializer =
    new _$FeedbackRecordSerializer();

class _$FeedbackRecordSerializer
    implements StructuredSerializer<FeedbackRecord> {
  @override
  final Iterable<Type> types = const [FeedbackRecord, _$FeedbackRecord];
  @override
  final String wireName = 'FeedbackRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FeedbackRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userAuthor;
    if (value != null) {
      result
        ..add('userAuthor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('Location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userAuthorImage;
    if (value != null) {
      result
        ..add('userAuthorImage')
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
  FeedbackRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'userAuthor':
          result.userAuthor = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Location':
          result.location = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'userAuthorImage':
          result.userAuthorImage = serializers.deserialize(value,
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

class _$FeedbackRecord extends FeedbackRecord {
  @override
  final DocumentReference<Object> userAuthor;
  @override
  final String text;
  @override
  final DateTime date;
  @override
  final DocumentReference<Object> location;
  @override
  final String userAuthorImage;
  @override
  final DocumentReference<Object> reference;

  factory _$FeedbackRecord([void Function(FeedbackRecordBuilder) updates]) =>
      (new FeedbackRecordBuilder()..update(updates))._build();

  _$FeedbackRecord._(
      {this.userAuthor,
      this.text,
      this.date,
      this.location,
      this.userAuthorImage,
      this.reference})
      : super._();

  @override
  FeedbackRecord rebuild(void Function(FeedbackRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackRecordBuilder toBuilder() =>
      new FeedbackRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackRecord &&
        userAuthor == other.userAuthor &&
        text == other.text &&
        date == other.date &&
        location == other.location &&
        userAuthorImage == other.userAuthorImage &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, userAuthor.hashCode), text.hashCode),
                    date.hashCode),
                location.hashCode),
            userAuthorImage.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedbackRecord')
          ..add('userAuthor', userAuthor)
          ..add('text', text)
          ..add('date', date)
          ..add('location', location)
          ..add('userAuthorImage', userAuthorImage)
          ..add('reference', reference))
        .toString();
  }
}

class FeedbackRecordBuilder
    implements Builder<FeedbackRecord, FeedbackRecordBuilder> {
  _$FeedbackRecord _$v;

  DocumentReference<Object> _userAuthor;
  DocumentReference<Object> get userAuthor => _$this._userAuthor;
  set userAuthor(DocumentReference<Object> userAuthor) =>
      _$this._userAuthor = userAuthor;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  DocumentReference<Object> _location;
  DocumentReference<Object> get location => _$this._location;
  set location(DocumentReference<Object> location) =>
      _$this._location = location;

  String _userAuthorImage;
  String get userAuthorImage => _$this._userAuthorImage;
  set userAuthorImage(String userAuthorImage) =>
      _$this._userAuthorImage = userAuthorImage;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FeedbackRecordBuilder() {
    FeedbackRecord._initializeBuilder(this);
  }

  FeedbackRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userAuthor = $v.userAuthor;
      _text = $v.text;
      _date = $v.date;
      _location = $v.location;
      _userAuthorImage = $v.userAuthorImage;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeedbackRecord;
  }

  @override
  void update(void Function(FeedbackRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedbackRecord build() => _build();

  _$FeedbackRecord _build() {
    final _$result = _$v ??
        new _$FeedbackRecord._(
            userAuthor: userAuthor,
            text: text,
            date: date,
            location: location,
            userAuthorImage: userAuthorImage,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
