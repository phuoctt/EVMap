import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rabbitevc/features/home/cubit/feed_cubit.dart';
import 'package:rabbitevc/features/home/cubit/feed_state.dart';
import 'package:rabbitevc/features/home/widgets/item_feed.dart';
import 'package:rabbitevc/share/utils/app_utils.dart';
import 'package:rabbitevc/theme/colors.dart';
import 'package:rabbitevc/theme/style.dart';
import 'package:rabbitevc/widget/app_cicular_indicator.dart';
import 'package:rabbitevc/widget/app_image.dart';
import 'package:flutter_html/flutter_html.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({super.key});

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  FeedCubit get _cubit => BlocProvider.of(context);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _cubit.onLoadFeed();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tin tức',
          style: AppTextStyle.largeTextMedium.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 160,
          child: BlocBuilder<FeedCubit, FeedState>(
            builder: (_, state) {
              return state.maybeWhen(
                  orElse: () => const AppCicularIndicator(),
                  feedLogged: (data) {
                    return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final item = data[index];
                          return GestureDetector(
                            onTap: () {
                              AppUtils.launchLink(item.link ?? '');
                            },
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: ItemFeed(item: item),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 16);
                        },
                        itemCount: data.length);
                  });
            },
          ),
        )
      ],
    );
  }
}
