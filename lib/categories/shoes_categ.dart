import 'package:flutter/material.dart';
import 'package:online_mall/utilities/categ_list.dart';
import 'package:online_mall/widgets/categ_widgets.dart';

class ShoesCategory extends StatefulWidget {
  const ShoesCategory({super.key});

  @override
  State<ShoesCategory> createState() => _ShoesCategoryState();
}

class _ShoesCategoryState extends State<ShoesCategory> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategHeaderLabel(
                  headerLabel: 'Shoes',
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.75,
                    child: GridView.builder(
                        itemCount: shoes.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    3, // You can adjust the number of columns here

                                childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          return SubcategModel(
                            mainCategName: 'Shoes',
                            subCategName: shoes[index],
                            assetName: 'images/shoes/shoes$index.jpg',
                            subCategLabel: shoes[index],
                          );
                        }))
              ],
            ),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          top: 80,
          child: SliderBar(
            mainCategName: 'Shoes',
          ),
        )
      ],
    );
  }
}
