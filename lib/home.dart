import 'package:docseek/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ui/home/header.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CategoryModel> categoriesData = CategoryModel.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          categories(),
        ],
      ),
    );
  }

  Column categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 16,
            left: 16,
          ),
          child: Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.all(16),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: categoriesData[index].isSelected
                            ? Color(0xff51A8FF).withOpacity(0.45)
                            : Color(0xff050618).withOpacity(0.45),
                    offset: Offset(0, 4),blurRadius: 25)
                  ],
                  color: categoriesData[index].isSelected
                      ? const Color(0xff51A8FF)
                      : Colors.white,
                ),
                child: SvgPicture.asset(categoriesData[index].vector,fit: BoxFit.none,),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 50),
            itemCount: categoriesData.length,
          ),
        ),
      ],
    );
  }
}
