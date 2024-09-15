import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: const Color(0xff51A8FF),
        height: 350,
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Edi',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              "Let's find\nyour top doctor",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            //------------------------SearchBar---------------------------------
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search Here....',
                  hintStyle: TextStyle(fontWeight: FontWeight.w400),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(50)))),
            )
          ],
        ),
      ),
    );
  }
}
