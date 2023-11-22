import 'package:flutter/material.dart';
import 'package:online_mall/minor_screens/search.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SearchScreen(),
          ),
        );
      },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.4),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.search,
                size: 20,
              ),
            ),
            const Expanded(
              flex: 3,
              child: Text(
                'What do you want?',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 40,
                width: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFF4D9CB2),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                ),
                child: const Center(
                    child: Text(
                  'Search',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
