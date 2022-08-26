import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'booking_record.g.dart';

abstract class BookingRecord
    implements Built<BookingRecord, BookingRecordBuilder> {
  static Serializer<BookingRecord> get serializer => _$bookingRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Location')
  DocumentReference get location;

  @nullable
  @BuiltValueField(wireName: 'User')
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'DateTime')
  DateTime get dateTime;

  @nullable
  @BuiltValueField(wireName: 'Accepted')
  bool get accepted;

  @nullable
  String get useremail;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BookingRecordBuilder builder) => builder
    ..accepted = false
    ..useremail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Booking');

  static Stream<BookingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BookingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BookingRecord._();
  factory BookingRecord([void Function(BookingRecordBuilder) updates]) =
      _$BookingRecord;

  static BookingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBookingRecordData({
  DocumentReference location,
  DocumentReference user,
  DateTime dateTime,
  bool accepted,
  String useremail,
}) =>
    serializers.toFirestore(
        BookingRecord.serializer,
        BookingRecord((b) => b
          ..location = location
          ..user = user
          ..dateTime = dateTime
          ..accepted = accepted
          ..useremail = useremail));
