import 'package:flutter/material.dart';

class DoctorModel {
  String name;
  String image;
  Color imageBox;
  List<String> specialties;
  double score;

  DoctorModel({
    required this.name,
    required this.image,
    required this.imageBox,
    required this.specialties,
    required this.score,
  });

  static List<DoctorModel> getDoctors() {
    List<DoctorModel> doctors = [];

    doctors.add(
        DoctorModel(
          name: 'Dr. Jenny Wilson',
          image: 'assets/images/jenny.png',
          imageBox: const Color(0xffFFA340).withOpacity(0.75),
          specialties: ['Dental Surgeon', 'Aesthetic Surgeon', 'General Dentist'],
          score: 4.8,
        )
    );
    doctors.add(
        DoctorModel(
          name: 'Dr. Kristin Watts',
          image: 'assets/images/kristin.png',
          imageBox: const Color(0xff3CFFC4).withOpacity(0.75),
          specialties: ['General Surgeon', 'Heart Surgeon', 'Cardiology Specialist'],
          score: 4.8,
        )
    );
    return doctors;
  }
}
