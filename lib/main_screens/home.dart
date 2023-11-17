import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: SafeArea(
        child: Scaffold(
          //APPBAR
          appBar: AppBar(
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.4),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('What do you want?'),
                  Container(
                    decoration: BoxDecoration(color: const Color(0xFF4D9CB2)),
                    child: Text('Search'),
                  )
                ],
              ),
            ),
            shadowColor: Theme.of(context).shadowColor,
            bottom: const TabBar(
              labelColor: Colors.black87,
              indicatorColor: Color(0xFFA6C8D1),
              indicatorWeight: 5,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  text: 'men',
                ),
                Tab(
                  text: 'women',
                ),
                Tab(
                  text: 'electronics',
                ),
                Tab(
                  text: 'accessories',
                ),
                Tab(
                  text: 'shoes',
                ),
                Tab(
                  text: 'home & garden',
                ),
                Tab(
                  text: 'beauty',
                ),
                Tab(
                  text: 'kids',
                ),
                Tab(
                  text: 'bags',
                ),
              ],
            ),
          ),

          //TAB BAR BODY
          body: TabBarView(children: [
            RepeatedTab(
              tabVariable: 'men',
            ),
            RepeatedTab(
              tabVariable: 'women',
            ),
            RepeatedTab(
              tabVariable: 'electronics',
            ),
            RepeatedTab(
              tabVariable: 'accessories',
            ),
            RepeatedTab(
              tabVariable: 'shoes',
            ),
            RepeatedTab(
              tabVariable: 'home & garden',
            ),
            RepeatedTab(
              tabVariable: 'beauty',
            ),
            RepeatedTab(
              tabVariable: 'kids',
            ),
            RepeatedTab(
              tabVariable: 'bags',
            ),
          ]),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class RepeatedTab extends StatelessWidget {
  RepeatedTab({super.key, required this.tabVariable});

  String tabVariable;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        tabVariable,
        style: const TextStyle(
            fontSize: 16, color: Color.fromARGB(255, 103, 10, 90)),
      ),
    );
  }
}
