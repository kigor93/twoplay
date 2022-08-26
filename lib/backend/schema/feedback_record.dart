import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feedback_record.g.dart';

abstract class FeedbackRecord
    implements Built<FeedbackRecord, FeedbackRecordBuilder> {
  static Serializer<FeedbackRecord> get serializer =>
      _$feedbackRecordSerializer;

  @nullable
  DocumentReference get userAuthor;

  @nullable
  String get text;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: 'Location')
  DocumentReference get location;

  @nullable
  String get userAuthorImage;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FeedbackRecordBuilder builder) => builder
    ..text = ''
    ..userAuthorImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FeedbackRecord._();
  factory FeedbackRecord([void Function(FeedbackRecordBuilder) updates]) =
      _$FeedbackRecord;

  static FeedbackRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFeedbackRecordData({
  DocumentReference userAuthor,
  String text,
  DateTime date,
  DocumentReference location,
  String userAuthorImage,
}) =>
    serializers.toFirestore(
        FeedbackRecord.serializer,
        FeedbackRecord((f) => f
          ..userAuthor = userAuthor
          ..text = text
          ..date = date
          ..location = location
          ..userAuthorImage = userAuthorImage));
