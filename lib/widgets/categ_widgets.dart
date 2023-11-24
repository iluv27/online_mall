import 'package:flutter/material.dart';
import 'package:online_mall/minor_screens/subcateg_products.dart';

class SubcategModel extends StatelessWidget {
  const SubcategModel(
      {super.key,
      required this.assetName,
      required this.mainCategName,
      required this.subCategName,
      required this.subCategLabel});

  final String mainCategName;
  final String subCategName;
  final String assetName;
  final String subCategLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SubCategProducts(
            maincategName: mainCategName,
            subcategName: subCategName,
          );
        }));
      },
      child: Card(
        elevation: 0.2,
        child: Column(
          children: [
            Image.asset(
              assetName, // Assuming images are in the 'assets' folder
              height: 90.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8.0),
            Text(subCategLabel),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CategHeaderLabel extends StatelessWidget {
  CategHeaderLabel({super.key, required this.headerLabel});

  String headerLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, bottom: 30),
      child: Center(
        child: Text(
          headerLabel,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
      ),
    );
  }
}

class SliderBar extends StatelessWidget {
  const SliderBar({super.key, required this.mainCategName});

  final String mainCategName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 0.05,
        decoration: BoxDecoration(
            color: Colors.brown.withOpacity(0.2),
            borderRadius: BorderRadius.circular(30)),
        child: RotatedBox(
          quarterTurns: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                mainCategName == 'bags' ? '' : '<<',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.brown,
                    letterSpacing: 10),
              ),
              Text(
                mainCategName.toUpperCase(),
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.brown,
                    letterSpacing: 10),
              ),
              Text(
                mainCategName == 'men' ? '' : '>>',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.brown,
                    letterSpacing: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
