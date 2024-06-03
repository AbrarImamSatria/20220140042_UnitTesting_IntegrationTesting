import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  final String name,
      birthplace,
      birthdate,
      gender,
      phonenumber,
      email,
      religion,
      job,
      address,
      polyclinic;
  const ViewPage(
      {Key? key,
      required this.name,
      required this.birthplace,
      required this.birthdate,
      required this.gender,
      required this.phonenumber,
      required this.email,
      required this.religion,
      required this.job,
      required this.address,
      required this.polyclinic})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: $name'),
              Text('Birth Place: $birthplace'),
              Text('Birht Date: $birthdate'),
              Text('Gender: $gender'),
              Text('Phone Number: $phonenumber'),
              Text('Email: $email'),
              Text('Religion: $religion'),
              Text('Job: $job'),
              Text('Address: $address'),
              Text('Polyclinic: $polyclinic'),
            ],
          ),
        ),
      ),
    );
  }
}
