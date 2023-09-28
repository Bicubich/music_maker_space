import 'package:flutter/material.dart';
import 'package:music_maker_space/common.dart';
import 'package:music_maker_space/widgets/card_view.dart';

class NewsUpdateCellView extends StatelessWidget {
  final bool isVerticalList;
  const NewsUpdateCellView({Key? key, required this.isVerticalList})
      : super(key: key);

  void updateCurrentRoute(BuildContext context, Widget widget,
      {bool fullscreenDialog = false}) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => widget,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isVerticalList
          ? EdgeInsets.zero
          : const EdgeInsets.only(bottom: 12.0),
      child: CardView(
        elevation: 0,
        radius: 16,
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/img_2.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Positioned(
                top: 0,
                left: 12,
                right: 0,
                bottom: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Заголовок',
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: font),
                    ),
                    Text(
                      'Основная информация',
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: font),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
