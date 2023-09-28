import 'package:flutter/material.dart';
import 'package:music_maker_space/news_update_cell_view.dart';

class NewsUpdateListView extends StatefulWidget {
  final int newUpdateCardCount;
  final bool isVerticalList;
  const NewsUpdateListView({
    Key? key,
    required this.newUpdateCardCount,
    this.isVerticalList = true,
  }) : super(key: key);

  @override
  State<NewsUpdateListView> createState() => _NewsUpdateListViewState();
}

class _NewsUpdateListViewState extends State<NewsUpdateListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.isVerticalList ? 195 : 500,
      width: widget.isVerticalList
          ? MediaQuery.of(context).size.width * 0.85
          : null,
      child: ListView.builder(
        itemCount: widget.newUpdateCardCount,
        scrollDirection:
            widget.isVerticalList ? Axis.horizontal : Axis.vertical,
        itemBuilder: (context, index) {
          return SizedBox(
              width: widget.isVerticalList
                  ? MediaQuery.of(context).size.width * 0.85
                  : null,
              height: widget.isVerticalList ? null : 195,
              child: NewsUpdateCellView(
                isVerticalList: widget.isVerticalList,
              ));
        },
      ),
    );
  }
}
