import 'package:flutter/material.dart';
import 'package:online_mall/utilities/categ_list.dart';
import 'package:online_mall/widgets/categ_widgets.dart';

class KidsCategory extends StatefulWidget {
  const KidsCategory({super.key});

  @override
  State<KidsCategory> createState() => _KidsCategoryState();
}

class _KidsCategoryState extends State<KidsCategory> {
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
                  headerLabel: 'Kids',
                ),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.75,
                    child: GridView.builder(
                        itemCount: kids.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    3, // You can adjust the number of columns here

                                childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          return SubcategModel(
                            mainCategName: 'Kids',
                            subCategName: kids[index],
                            assetName: 'images/kids/kids$index.jpg',
                            subCategLabel: kids[index],
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
            mainCategName: 'Kids',
          ),
        )
      ],
    );
  }
}
