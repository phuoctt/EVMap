import 'package:flutter/material.dart';

import '../theme/colors.dart';

typedef FutureCallBack = Future<bool> Function();

class LoadMore extends StatefulWidget {
  final Widget? child;
  final bool? isFinish;

  final FutureCallBack? onLoadMore;

  const LoadMore({
    Key? key,
    this.child,
    this.onLoadMore,
    this.isFinish = true,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoadState();
}

class _LoadState extends State<LoadMore> {
  Widget? get child => widget.child;
  bool isFinish = true;

  @override
  void initState() {
    isFinish = widget.isFinish ?? true;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant LoadMore oldWidget) {
    isFinish = widget.isFinish ?? true;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (child is ListView) {
      return _buildListView(child as ListView);
    }
    if (child is SliverList) {
      return _buildSliverList(child as SliverList);
    }
    if (child is SliverGrid) {
      return _buildSliverGrid(child as SliverGrid);
    }
    if (child is GridView) {
      return _buildGridView(child as GridView);
    }
    if (child is CustomScrollView) {
      return _buildCustomScrollView(child as CustomScrollView);
    }
    // if (child is ScrollablePositionedList) {
    //   return _buildScrollablePositionedList(child as ScrollablePositionedList);
    // }
    // if (child is MasonryGridView) {
    //   return _buildMasonryGridView(child as MasonryGridView);
    // }
    // if (child is SliverMasonryGrid) {
    //   return _buildSliverMasonryGrid(child as SliverMasonryGrid);
    // }
    return child ?? const SizedBox.shrink();
  }

  Widget _buildListView(ListView listView) {
    var delegate = listView.childrenDelegate;

    if (delegate is SliverChildBuilderDelegate) {
      SliverChildBuilderDelegate delegate =
          listView.childrenDelegate as SliverChildBuilderDelegate;

      var viewCount = isFinish
          ? delegate.estimatedChildCount
          : delegate.estimatedChildCount! + 1;

      IndexedWidgetBuilder builder = (context, index) {
        if (index == viewCount! - 1 && !isFinish) {
          return _buildLoadMoreView();
        }
        return delegate.builder(context, index) ?? Container();
      };

      return ListView.builder(
        itemBuilder: builder,
        addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
        addRepaintBoundaries: delegate.addRepaintBoundaries,
        addSemanticIndexes: delegate.addSemanticIndexes,
        dragStartBehavior: listView.dragStartBehavior,
        semanticChildCount: listView.semanticChildCount,
        itemCount: viewCount,
        cacheExtent: listView.cacheExtent,
        itemExtent: listView.itemExtent,
        key: listView.key,
        padding: listView.padding,
        physics: listView.physics,
        primary: listView.primary,
        controller: listView.controller,
        reverse: listView.reverse,
        scrollDirection: listView.scrollDirection,
        shrinkWrap: listView.shrinkWrap,
      );
    }
    return listView;
  }

  LoadMoreStatus status = LoadMoreStatus.idle;

  _buildLoadMoreView({bool isCircularProgress = true}) {
    return NotificationListener<_BuildNotify>(
      onNotification: _onLoadMoreBuild,
      child:
          _LoadMoreView(status: status, isCircularProgress: isCircularProgress),
    );
  }

  bool _onLoadMoreBuild(_BuildNotify notification) {
    if (status == LoadMoreStatus.loading) {
      return false;
    }
    if (status == LoadMoreStatus.fail) {
      return false;
    }
    if (status == LoadMoreStatus.idle) {
      loadMore();
    }
    return false;
  }

  void _updateStatus(LoadMoreStatus status) {
    this.status = status;
  }

  void loadMore() {
    _updateStatus(LoadMoreStatus.loading);
    if (widget.onLoadMore != null) {
      widget.onLoadMore!().then((v) {
        if (v == true) {
          _updateStatus(LoadMoreStatus.idle);
        } else {
          _updateStatus(LoadMoreStatus.fail);
        }
      });
    }
  }

  Widget _buildCustomScrollView(CustomScrollView customScrollView) {
    final List<Widget> slivers = customScrollView.slivers
      ..add(SliverToBoxAdapter(
        child: _buildLoadMoreView(),
      ));
    return CustomScrollView(
      key: customScrollView.key,
      scrollDirection: customScrollView.scrollDirection,
      reverse: customScrollView.reverse,
      controller: customScrollView.controller,
      primary: customScrollView.primary,
      physics: customScrollView.physics,
      scrollBehavior: customScrollView.scrollBehavior,
      shrinkWrap: customScrollView.shrinkWrap,
      center: customScrollView.center,
      anchor: customScrollView.anchor,
      cacheExtent: customScrollView.cacheExtent,
      slivers: slivers,
      semanticChildCount: customScrollView.semanticChildCount,
      dragStartBehavior: customScrollView.dragStartBehavior,
      keyboardDismissBehavior: customScrollView.keyboardDismissBehavior,
      restorationId: customScrollView.restorationId,
      clipBehavior: customScrollView.clipBehavior,
    );
  }

  Widget _buildSliverGrid(SliverGrid list) {
    final delegate = list.delegate;

    if (delegate is SliverChildListDelegate) {
      return SliverGrid(
        delegate: delegate,
        gridDelegate: list.gridDelegate,
      );
    }

    outer:
    if (delegate is SliverChildBuilderDelegate) {
      if (delegate.estimatedChildCount == 0) {
        break outer;
      }
      var viewCount = isFinish
          ? delegate.estimatedChildCount
          : delegate.estimatedChildCount! + 1;
      IndexedWidgetBuilder builder = (context, index) {
        if (index == viewCount! - 1 && !isFinish) {
          return _buildLoadMoreView();
        }
        return delegate.builder(context, index) ?? Container();
      };

      return SliverGrid(
        delegate: SliverChildBuilderDelegate(
          builder,
          addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
          addRepaintBoundaries: delegate.addRepaintBoundaries,
          addSemanticIndexes: delegate.addSemanticIndexes,
          childCount: viewCount,
          semanticIndexCallback: delegate.semanticIndexCallback,
          semanticIndexOffset: delegate.semanticIndexOffset,
        ),
        gridDelegate: list.gridDelegate,
      );
    }

    outer:
    if (delegate is SliverChildListDelegate) {
      if (delegate.estimatedChildCount == 0) {
        break outer;
      }
      delegate.children.add(_buildLoadMoreView());
      return SliverGrid(
        delegate: SliverChildListDelegate(
          delegate.children,
          addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
          addRepaintBoundaries: delegate.addRepaintBoundaries,
          addSemanticIndexes: delegate.addSemanticIndexes,
          semanticIndexCallback: delegate.semanticIndexCallback,
          semanticIndexOffset: delegate.semanticIndexOffset,
        ),
        gridDelegate: list.gridDelegate,
      );
    }

    return list;
  }

  Widget _buildSliverList(SliverList list) {
    final delegate = list.delegate;

    if (delegate is SliverChildListDelegate) {
      return SliverList(
        delegate: delegate,
      );
    }

    outer:
    if (delegate is SliverChildBuilderDelegate) {
      if (delegate.estimatedChildCount == 0) {
        break outer;
      }
      var viewCount = isFinish
          ? delegate.estimatedChildCount
          : delegate.estimatedChildCount! + 1;
      IndexedWidgetBuilder builder = (context, index) {
        if (index == viewCount! - 1 && !isFinish) {
          return _buildLoadMoreView();
        }
        return delegate.builder(context, index) ?? Container();
      };

      return SliverList(
        delegate: SliverChildBuilderDelegate(
          builder,
          addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
          addRepaintBoundaries: delegate.addRepaintBoundaries,
          addSemanticIndexes: delegate.addSemanticIndexes,
          childCount: viewCount,
          semanticIndexCallback: delegate.semanticIndexCallback,
          semanticIndexOffset: delegate.semanticIndexOffset,
        ),
      );
    }

    outer:
    if (delegate is SliverChildListDelegate) {
      if (delegate.estimatedChildCount == 0) {
        break outer;
      }
      delegate.children.add(_buildLoadMoreView());
      return SliverList(
        delegate: SliverChildListDelegate(
          delegate.children,
          addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
          addRepaintBoundaries: delegate.addRepaintBoundaries,
          addSemanticIndexes: delegate.addSemanticIndexes,
          semanticIndexCallback: delegate.semanticIndexCallback,
          semanticIndexOffset: delegate.semanticIndexOffset,
        ),
      );
    }

    return list;
  }

  Widget _buildGridView(GridView gridView) {
    var delegate = gridView.childrenDelegate;
    if (delegate is SliverChildBuilderDelegate) {
      SliverChildBuilderDelegate delegate =
          gridView.childrenDelegate as SliverChildBuilderDelegate;

      var viewCount = isFinish
          ? delegate.estimatedChildCount
          : delegate.estimatedChildCount! + 1;

      IndexedWidgetBuilder builder = (context, index) {
        if (index == viewCount! - 1 && !isFinish) {
          return _buildLoadMoreView();
        }
        return delegate.builder(context, index) ?? Container();
      };

      return GridView.builder(
        itemBuilder: builder,
        controller: gridView.controller,
        addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
        addRepaintBoundaries: delegate.addRepaintBoundaries,
        addSemanticIndexes: delegate.addSemanticIndexes,
        dragStartBehavior: gridView.dragStartBehavior,
        semanticChildCount: gridView.semanticChildCount,
        itemCount: viewCount,
        cacheExtent: gridView.cacheExtent,
        key: gridView.key,
        padding: gridView.padding,
        physics: gridView.physics,
        primary: gridView.primary,
        reverse: gridView.reverse,
        scrollDirection: gridView.scrollDirection,
        shrinkWrap: gridView.shrinkWrap,
        gridDelegate: gridView.gridDelegate,
      );
    }
    return gridView;
  }

  // Widget _buildScrollablePositionedList(
  //     ScrollablePositionedList scrollablePositionedList) {
  //   var viewCount = isFinish
  //       ? scrollablePositionedList.itemCount
  //       : scrollablePositionedList.itemCount + 1;
  //
  //   IndexedWidgetBuilder builder = (context, index) {
  //     if (index == viewCount - 1 && !isFinish) {
  //       return _buildLoadMoreView();
  //     }
  //     return scrollablePositionedList.itemBuilder(context, index);
  //   };
  //
  //   return ScrollablePositionedList.separated(
  //     itemBuilder: builder,
  //     itemCount: viewCount,
  //     addAutomaticKeepAlives: scrollablePositionedList.addAutomaticKeepAlives,
  //     addRepaintBoundaries: scrollablePositionedList.addRepaintBoundaries,
  //     addSemanticIndexes: scrollablePositionedList.addSemanticIndexes,
  //     semanticChildCount: scrollablePositionedList.semanticChildCount,
  //     shrinkWrap: scrollablePositionedList.shrinkWrap,
  //     key: scrollablePositionedList.key,
  //     padding: scrollablePositionedList.padding,
  //     physics: scrollablePositionedList.physics,
  //     reverse: scrollablePositionedList.reverse,
  //     scrollDirection: scrollablePositionedList.scrollDirection,
  //     itemPositionsListener: scrollablePositionedList.itemPositionsNotifier,
  //     initialScrollIndex: scrollablePositionedList.initialScrollIndex,
  //     separatorBuilder: scrollablePositionedList.separatorBuilder,
  //     itemScrollController: scrollablePositionedList.itemScrollController,
  //     scrollOffsetController: scrollablePositionedList.scrollOffsetController,
  //   );
  // }
  //
  // Widget _buildMasonryGridView(MasonryGridView listView) {
  //   var delegate = listView.childrenDelegate;
  //
  //   if (delegate is SliverChildBuilderDelegate) {
  //     SliverChildBuilderDelegate delegate =
  //         listView.childrenDelegate as SliverChildBuilderDelegate;
  //
  //     var viewCount = isFinish
  //         ? delegate.estimatedChildCount
  //         : delegate.estimatedChildCount! + 1;
  //
  //     IndexedWidgetBuilder builder = (context, index) {
  //       if (index == viewCount! - 1 && !isFinish) {
  //         return _buildLoadMoreView();
  //       }
  //       return delegate.builder(context, index) ?? Container();
  //     };
  //
  //     return MasonryGridView.builder(
  //       itemBuilder: builder,
  //       addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
  //       addRepaintBoundaries: delegate.addRepaintBoundaries,
  //       addSemanticIndexes: delegate.addSemanticIndexes,
  //       dragStartBehavior: listView.dragStartBehavior,
  //       semanticChildCount: listView.semanticChildCount,
  //       itemCount: viewCount,
  //       cacheExtent: listView.cacheExtent,
  //       key: listView.key,
  //       padding: listView.padding,
  //       physics: listView.physics,
  //       primary: listView.primary,
  //       controller: listView.controller,
  //       reverse: listView.reverse,
  //       scrollDirection: listView.scrollDirection,
  //       shrinkWrap: listView.shrinkWrap,
  //       mainAxisSpacing: listView.mainAxisSpacing,
  //       crossAxisSpacing: listView.crossAxisSpacing,
  //       gridDelegate: listView.gridDelegate,
  //     );
  //   }
  //   return listView;
  // }
  //
  // Widget _buildSliverMasonryGrid(SliverMasonryGrid listView) {
  //   var delegate = listView.delegate;
  //
  //   if (delegate is SliverChildBuilderDelegate) {
  //     SliverChildBuilderDelegate delegate =
  //         listView.delegate as SliverChildBuilderDelegate;
  //
  //     var viewCount = isFinish
  //         ? delegate.estimatedChildCount
  //         : delegate.estimatedChildCount! + 1;
  //
  //     IndexedWidgetBuilder builder = (context, index) {
  //       if (index == viewCount! - 1 && !isFinish) {
  //         return _buildLoadMoreView(isCircularProgress: false);
  //       }
  //       return delegate.builder(context, index) ?? Container();
  //     };
  //     return SliverMasonryGrid.count(
  //         itemBuilder: builder,
  //         key: listView.key,
  //         mainAxisSpacing: listView.mainAxisSpacing,
  //         crossAxisSpacing: listView.crossAxisSpacing,
  //         crossAxisCount: 3,
  //         childCount: viewCount);
  //   }
  //   return listView;
  // }
}

class _LoadMoreView extends StatelessWidget {
  final LoadMoreStatus status;
  final bool isCircularProgress;

  const _LoadMoreView({
    Key? key,
    this.status = LoadMoreStatus.idle,
    this.isCircularProgress = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    notify(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Opacity(
          opacity: 1,
          child: isCircularProgress
              ? const CircularProgressIndicator(
                  strokeWidth: 2.0,
                  color: AppColors.primaryColor,
                )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }

  void notify(BuildContext context) async {
    if (status == LoadMoreStatus.idle) {
      _BuildNotify().dispatch(context);
    }
  }
}

class _BuildNotify extends Notification {}

enum LoadMoreStatus {
  idle,
  loading,
  fail,
}
