import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('ViewPage displays the correct information', (WidgetTester tester) async {
    // Define the test data
    const name = 'John Doe';
    const birthplace = 'New York';
    const birthdate = '01/01/1990';
    const gender = 'Male';
    const phonenumber = '1234567890';
    const email = 'johndoe@example.com';
    const religion = 'Christian';
    const job = 'Software Engineer';
    const address = '123 Main St';
    const polyclinic = 'Cardiology';

    // Build the widget with complete data
    await tester.pumpWidget(MaterialApp(
      home: ViewPage(
        name: name,
        birthplace: birthplace,
        birthdate: birthdate,
        gender: gender,
        phonenumber: phonenumber,
        email: email,
        religion: religion,
        job: job,
        address: address,
        polyclinic: polyclinic,
      ),
    ));

    // Verify the information is displayed correctly
    expect(find.text('Name: $name'), findsOneWidget);
    expect(find.text('Birth Place: $birthplace'), findsOneWidget);
    expect(find.text('Birht Date: $birthdate'), findsOneWidget);
    expect(find.text('Gender: $gender'), findsOneWidget);
    expect(find.text('Phone Number: $phonenumber'), findsOneWidget);
    expect(find.text('Email: $email'), findsOneWidget);
    expect(find.text('Religion: $religion'), findsOneWidget);
    expect(find.text('Job: $job'), findsOneWidget);
    expect(find.text('Address: $address'), findsOneWidget);
    expect(find.text('Polyclinic: $polyclinic'), findsOneWidget);
  });

  testWidgets('ViewPage displays correctly with empty data', (WidgetTester tester) async {
    // Build the widget with empty data
    await tester.pumpWidget(MaterialApp(
      home: ViewPage(
        name: '',
        birthplace: '',
        birthdate: '',
        gender: '',
        phonenumber: '',
        email: '',
        religion: '',
        job: '',
        address: '',
        polyclinic: '',
      ),
    ));

    // Verify that no information is displayed
    expect(find.text('Name:'), findsNothing);
    expect(find.text('Birth Place:'), findsNothing);
    expect(find.text('Birht Date:'), findsNothing);
    expect(find.text('Gender:'), findsNothing);
    expect(find.text('Phone Number:'), findsNothing);
    expect(find.text('Email:'), findsNothing);
    expect(find.text('Religion:'), findsNothing);
    expect(find.text('Job:'), findsNothing);
    expect(find.text('Address:'), findsNothing);
    expect(find.text('Polyclinic:'), findsNothing);
  });

  testWidgets('ViewPage displays correctly with partial data', (WidgetTester tester) async {
    // Define the partial test data
    const name = 'John Doe';
    const birthdate = '01/01/1990';
    const phonenumber = '1234567890';
    const email = 'johndoe@example.com';
    const address = '123 Main St';

    // Build the widget with partial data
    await tester.pumpWidget(MaterialApp(
      home: ViewPage(
        name: name,
        birthplace: '', // Empty
        birthdate: birthdate,
        gender: '', // Empty
        phonenumber: phonenumber,
        email: email,
        religion: '', // Empty
        job: '', // Empty
        address: address,
        polyclinic: '', // Empty
      ),
    ));

    // Verify the information is displayed correctly
    expect(find.text('Name: $name'), findsOneWidget);
    expect(find.text('Birht Date: $birthdate'), findsOneWidget);
    expect(find.text('Phone Number: $phonenumber'), findsOneWidget);
    expect(find.text('Email: $email'), findsOneWidget);
    expect(find.text('Address: $address'), findsOneWidget);

    // Verify that empty data is not displayed
    expect(find.text('Birth Place:'), findsNothing);
    expect(find.text('Gender:'), findsNothing);
    expect(find.text('Religion:'), findsNothing);
    expect(find.text('Job:'), findsNothing);
    expect(find.text('Polyclinic:'), findsNothing);
  });

  testWidgets('ViewPage handles invalid birthdate format', (WidgetTester tester) async {
    // Build the widget with invalid birthdate format
    await tester.pumpWidget(MaterialApp(
      home: ViewPage(
        name: 'John Doe',
        birthplace: 'New York',
        birthdate: '1990/01/01', // Invalid format
        gender: 'Male',
        phonenumber: '1234567890',
        email: 'johndoe@example.com',
        religion: 'Christian',
        job: 'Software Engineer',
        address: '123 Main St',
        polyclinic: 'Cardiology',
      ),
    ));

    // Verify that birthdate is not displayed
    expect(find.text('Birht Date:'), findsNothing);
  });

  testWidgets('ViewPage handles invalid email format', (WidgetTester tester) async {
    // Build the widget with invalid email format
    await tester.pumpWidget(MaterialApp(
      home: ViewPage(
        name: 'John Doe',
        birthplace: 'New York',
        birthdate: '01/01/1990',
        gender: 'Male',
        phonenumber: '1234567890',
        email: 'johndoexample.com', // Invalid format
        religion: 'Christian',
        job: 'Software Engineer',
        address: '123 Main St',
        polyclinic: 'Cardiology',
      ),
    ));

    // Verify that email is not displayed
    expect(find.text('Email:'), findsNothing);
  });

  // Add more tests as needed
}
