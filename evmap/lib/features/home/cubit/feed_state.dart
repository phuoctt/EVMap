import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbitevc/models/feed/feed_model.dart';

part 'feed_state.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.loading() = FeedLoading;

  const factory FeedState.feedLogged({required List<FeedModel> data}) =
      FeedLogged;

  const factory FeedState.error({String? error}) = FeedError;
}
