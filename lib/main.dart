import 'package:flutter/material.dart';
import 'package:music_maker_space/common.dart';
import 'package:music_maker_space/news_update_list_view.dart';
import 'package:music_maker_space/widgets/my_button.dart';

import 'autorization_page.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const Scaffold(body: EventsPage())));
}

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

List<MyButton> buttonList = [
  MyButton(
    text: 'Новости',
    textColor: Colors.black,
    fillColor: Colors.green,
    onTab: () {},
    textHorizontalPading: 24.0,
    textVerticalPading: 8.0,
  ),
  MyButton(
    text: 'Мероприятия',
    textColor: Colors.white,
    fillColor: Colors.grey,
    onTab: () {},
    textHorizontalPading: 24.0,
    textVerticalPading: 8.0,
  ),
  MyButton(
    text: 'Конкурсы',
    textColor: Colors.white,
    fillColor: Colors.grey,
    onTab: () {},
    textHorizontalPading: 24.0,
    textVerticalPading: 8.0,
  ),
];

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 12),
      child: Column(
        children: [
          const Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
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
                ],
              ),
            ],
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: buttonList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                            child: buttonList[index]);
                      }),
                ),
              ),
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
              const NewsUpdateListView(
                newUpdateCardCount: 3,
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
              const NewsUpdateListView(
                newUpdateCardCount: 3,
                isVerticalList: false,
              ),
              Container(),
            ],
          ))
        ],
      ),
    );
  }
}
