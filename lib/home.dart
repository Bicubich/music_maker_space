import 'package:flutter/material.dart';
import 'package:music_maker_space/events_page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  Widget myEvents = const MyEvents();
  Widget myDistribution = const MyDistribution();
  Widget myMarket = const MyMarket();
  Widget myMessenger = const MyMessenger();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
            ),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.horizontal_distribute_sharp,
            ),
            label: "Distribution",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop_rounded,
            ),
            label: "Market",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
            ),
            label: "Messenger",
          ),
        ],
        onTap: (int index) {
          onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return myEvents;
    } else if (selectedIndex == 1) {
      return myDistribution;
    } else if (selectedIndex == 2) {
      return myMarket;
    } else {
      return myMessenger;
    }
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

class MyEvents extends StatelessWidget {
  const MyEvents({super.key});
  @override
  Widget build(BuildContext context) {
    return EventsPage();
  }
}

class MyDistribution extends StatelessWidget {
  const MyDistribution({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Distribution  page in development",
      style: TextStyle(color: Colors.white),
    ));
  }
}

class MyMarket extends StatelessWidget {
  const MyMarket({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("Market  page in development",
            style: TextStyle(color: Colors.white)));
  }
}

class MyMessenger extends StatelessWidget {
  const MyMessenger({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("Messenger page in development",
            style: TextStyle(color: Colors.white)));
  }
}
