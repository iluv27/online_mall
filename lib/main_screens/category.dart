import 'package:flutter/material.dart';
import 'package:online_mall/widgets/fake_search.dart';
import 'package:online_mall/utilities/categ_list.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int? selectedIndex;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const FakeSearch(),
        ),
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: sideNavigator(context),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: categView(context),
            ),
          ],
        ),
      ),
    );
  }

  Container categView(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.9,
      child: PageView(
        onPageChanged: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        scrollDirection: Axis.vertical,
        children: const [
          Center(
            child: Text('men'),
          ),
          Center(
            child: Text('women'),
          ),
          Center(
            child: Text('electronics'),
          ),
          Center(
            child: Text('accessories'),
          ),
          Center(
            child: Text('shoes'),
          ),
          Center(
            child: Text('home and garden'),
          ),
          Center(
            child: Text('beauty'),
          ),
          Center(
            child: Text('kids'),
          ),
          Center(
            child: Text('bags'),
          ),
        ],
      ),
    );
  }

  Container sideNavigator(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.84,
      child: ListView.builder(
          itemCount: maincateg.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                height: 100,
                color:
                    index == selectedIndex ? Colors.white : Colors.transparent,
                child: Center(
                  child: Text(maincateg[index]),
                ),
              ),
            );
          }),
    );
  }
}
