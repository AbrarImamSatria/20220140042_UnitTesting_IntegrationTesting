import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('fill the form slowly and navigate to view page', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Find form fields and button
      final nameField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Name');
      final birthPlaceField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Birth Place');
      final birthDateField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Birth Date');
      final genderField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Gender');
      final phoneNumberField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Phone Number');
      final emailField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Email');
      final religionField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Religion');
      final jobField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Job');
      final addressField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Address');
      final polyclinicField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Polyclinic');
      final submitButton = find.byType(ElevatedButton);

      // Enter text into form fields slowly
      await tester.enterText(nameField, 'Abrar Imam Satria');
      await tester.pump(const Duration(milliseconds: 500));
      await tester.enterText(birthPlaceField, 'Yogyakarta');
      await tester.pump(const Duration(milliseconds: 500));
      await tester.enterText(birthDateField, '09/05/2004');
      await tester.pump(const Duration(milliseconds: 500));
      await tester.enterText(genderField, 'Male');
      await tester.pump(const Duration(milliseconds: 500));
      await tester.enterText(phoneNumberField, '082385262659');
      await tester.pump(const Duration(milliseconds: 500));
      await tester.enterText(emailField, 'abrar.imam.ft22@mail.umy.ac.id');
      await tester.pump(const Duration(milliseconds: 500));
      await tester.enterText(religionField, 'Rusia');
      await tester.pump(const Duration(milliseconds: 500));
      await tester.enterText(jobField, 'Engineer');
      await tester.pump(const Duration(milliseconds: 500));
      await tester.enterText(addressField, 'Kasihan');
      await tester.pump(const Duration(milliseconds: 500));
      await tester.enterText(polyclinicField, 'General');
      await tester.pump(const Duration(milliseconds: 500));

      // Tap the submit button slowly
      await tester.tap(submitButton);
      await tester.pump(const Duration(milliseconds: 500));

      // Verify navigation to ViewPage with correct data
      await tester.pumpAndSettle();
      expect(find.text('Name: Abrar Imam Satria'), findsOneWidget);
      expect(find.text('Birth Place: Yogyakarta'), findsOneWidget);
      expect(find.text('Birht Date: 09/05/2004'), findsOneWidget);
      expect(find.text('Gender: Male'), findsOneWidget);
      expect(find.text('Phone Number: 082385262659'), findsOneWidget);
      expect(find.text('Email: abrar.imam.ft22@mail.umy.ac.id'), findsOneWidget);
      expect(find.text('Religion: Rusia'), findsOneWidget);
      expect(find.text('Job: Engineer'), findsOneWidget);
      expect(find.text('Address: Kasihan'), findsOneWidget);
      expect(find.text('Polyclinic: General'), findsOneWidget);
    });
  });
}
