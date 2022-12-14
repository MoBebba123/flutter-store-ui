import 'package:donut_app/tabs/burger_tab.dart';
import 'package:donut_app/tabs/cake_tab.dart';
import 'package:donut_app/tabs/donut_tab.dart';
import 'package:donut_app/tabs/pizza_tab.dart';
import 'package:donut_app/tabs/smoothie_tab.dart';
import 'package:donut_app/utils/drawer.dart';
import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
  List<Widget> myTabs = [
    const MyTab(
      iconPath: "lib/icons/donut.png",
    ),
    const MyTab(
      iconPath: "lib/icons/burger.png",
    ),
    const MyTab(
      iconPath: "lib/icons/cake.png",
    ),
    const MyTab(
      iconPath: "lib/icons/coffee-cup.png",
    ),
    const MyTab(
      iconPath: "lib/icons/pizza.png",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(
        child: Drawer_nav(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
            onPressed: () => _drawerKey.currentState?.openDrawer(),
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed("/product", arguments: 'hello there');
                },
              ))
        ],
      ),
      body: DefaultTabController(
        length: myTabs.length,
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 36.0, vertical: 10.0),
            child: Row(
              children: const [
                Text(
                  "i want to ",
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  "EAT",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          TabBar(tabs: myTabs),
          Expanded(
              child: TabBarView(
            children: [
              // donut page
              DonutTab(),
              // burger page
              const BurgerTab(),
              // cake page
              const CakeTab(),
              // smoothie page
              const SmoothieTab(),
              // pizza page
              const PizzaTab(),
            ],
          ))
        ]),
      ),
    );
  }
}
