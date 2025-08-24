// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'feed_model.g.dart';

@JsonSerializable()
class FeedModel {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "content")
  String? content;
  @JsonKey(name: "content_snippet")
  String? contentSnippet;
  @JsonKey(name: "publish_date")
  DateTime? publishDate;

  FeedModel({
    this.title,
    this.link,
    this.content,
    this.contentSnippet,
    this.publishDate,
  });

  FeedModel copyWith({
    String? title,
    String? link,
    String? content,
    String? contentSnippet,
    DateTime? publishDate,
  }) =>
      FeedModel(
        title: title ?? this.title,
        link: link ?? this.link,
        content: content ?? this.content,
        contentSnippet: contentSnippet ?? this.contentSnippet,
        publishDate: publishDate ?? this.publishDate,
      );

  factory FeedModel.fromJson(Map<String, dynamic> json) => _$FeedModelFromJson(json);

  Map<String, dynamic> toJson() => _$FeedModelToJson(this);
}
