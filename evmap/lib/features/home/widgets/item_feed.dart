import 'package:flutter/material.dart';
import 'package:rabbitevc/models/feed/feed_model.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_image.dart';

class ItemFeed extends StatefulWidget {
  final FeedModel item;

  const ItemFeed({
    required this.item,
    super.key,
  });

  @override
  State<ItemFeed> createState() => _ItemFeedState();
}

class _ItemFeedState extends State<ItemFeed> {
  FeedModel get _data => widget.item;
  String? imageUrl;

  @override
  void initState() {
    getImageUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AppImage.network(imageUrl, fit: BoxFit.cover),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          _data.title ?? '',
          maxLines: 2,
          style: AppTextStyle.bodyLight.copyWith(color: GreyColor.grey2),
        )
      ],
    );
  }

  void getImageUrl() async {
    setState(() {
      String htmlContent = _data.content ?? '';
      RegExp regex = RegExp('<img[^>]*src="([^"]+)"');
      RegExpMatch? match = regex.firstMatch(htmlContent);
      if (match != null) {
        imageUrl = match.group(1);
      } else {
        imageUrl = null;
      }
    });
  }
}
