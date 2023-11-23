import 'package:flutter/material.dart';
import 'package:online_mall/utilities/categ_list.dart';

class MenCategory extends StatefulWidget {
  const MenCategory({super.key});

  @override
  State<MenCategory> createState() => _MenCategoryState();
}

class _MenCategoryState extends State<MenCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 70.0, bottom: 30),
          child: Center(
            child: Text(
              'Men Section',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
          ),
        ),
        SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.75,
            child: GridView.builder(
                itemCount: men.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        3, // You can adjust the number of columns here

                    childAspectRatio: 0.7),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0.2,
                    child: Column(
                      children: [
                        Image.asset(
                          'images/men/men$index.jpg', // Assuming images are in the 'assets' folder
                          height: 90.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        Text(men[index]),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
