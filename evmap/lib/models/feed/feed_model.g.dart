// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedModel _$FeedModelFromJson(Map json) => FeedModel(
      title: json['title'] as String?,
      link: json['link'] as String?,
      content: json['content'] as String?,
      contentSnippet: json['content_snippet'] as String?,
      publishDate: json['publish_date'] == null
          ? null
          : DateTime.parse(json['publish_date'] as String),
    );

Map<String, dynamic> _$FeedModelToJson(FeedModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('link', instance.link);
  writeNotNull('content', instance.content);
  writeNotNull('content_snippet', instance.contentSnippet);
  writeNotNull('publish_date', instance.publishDate?.toIso8601String());
  return val;
}
