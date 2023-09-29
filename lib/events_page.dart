import 'package:flutter/material.dart';
import 'package:music_maker_space/common.dart';
import 'package:music_maker_space/news_update_list_view.dart';

import 'widgets/my_category_button.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  int selectedButton = 0;

  void changeSelectedButton(int index) {
    setState(() {
      selectedButton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<MyCategoryButton> buttonList = [
      MyCategoryButton(
        text: 'Новости',
        onTab: () {
          changeSelectedButton(0);
        },
        isSelected: selectedButton == 0,
      ),
      MyCategoryButton(
        text: 'Мероприятия',
        onTab: () {
          changeSelectedButton(1);
        },
        isSelected: selectedButton == 1,
      ),
      MyCategoryButton(
        text: 'Мероприятия',
        onTab: () {
          changeSelectedButton(2);
        },
        isSelected: selectedButton == 2,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 12),
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 24.0,
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Имя Фамилия',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: font),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    'Артист',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: font),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 22,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Icon(
                                Icons.notifications,
                                size: 22,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: SizedBox(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: buttonList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 5, 12, 5),
                                child: buttonList[index]);
                          }),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text("Обновления",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: font)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: NewsUpdateListView(
                  newUpdateCardCount: 3,
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text("Актуальное",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: font)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: NewsUpdateListView(
                  newUpdateCardCount: 3,
                  isVerticalList: false,
                ),
              ),
              Container(),
            ],
          ))
        ],
      ),
    );
  }
}
