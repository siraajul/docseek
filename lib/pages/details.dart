import 'package:docseek/model/doctor.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final DoctorModel doctorModel;

  const DetailsPage({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        leadingWidth: 100,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xff050618).withOpacity(0.06),
                        blurRadius: 25,
                        offset: const Offset(0, 4)),
                  ]),
              child: const Icon(Icons.arrow_back),
            )),
        backgroundColor: Colors.white,
        title: const Text(
          'Detail Doctor',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16 .0),
        child: Column(
          children: [info()],
        ),
      ),
    );
  }

  Widget info() {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: Row(
            children: [
              Container(
                width: 105,
                decoration: BoxDecoration(
                    color: doctorModel.imageBox,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image: AssetImage(doctorModel.image))),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorModel.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    Text(
                      doctorModel.specialties.first,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 05,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          doctorModel.score.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
