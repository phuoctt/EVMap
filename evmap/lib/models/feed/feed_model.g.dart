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

Map<String, dynamic> _$FeedModelToJson(FeedModel instance) => <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.link case final value?) 'link': value,
      if (instance.content case final value?) 'content': value,
      if (instance.contentSnippet case final value?) 'content_snippet': value,
      if (instance.publishDate?.toIso8601String() case final value?)
        'publish_date': value,
    };
