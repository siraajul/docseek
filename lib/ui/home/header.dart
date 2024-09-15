import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container header() {
  return Container(
    color: const Color(0xff51A8FF),
    height: 350,
    padding: const EdgeInsets.all(16),
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Right Text
            const Text(
              'Hi Edi',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            //Right Icon
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset('assets/vectors/notification.svg',fit: BoxFit.none,),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Let's find\nyour top doctor!",
          style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 30,
        ),
        //------------------------SearchBar---------------------------------
        const TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search Here....',
              hintStyle: TextStyle(fontWeight: FontWeight.w400),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(50)))),
        ),
      ],
    ),
  );
}

