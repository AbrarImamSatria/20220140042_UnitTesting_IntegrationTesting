import 'package:flutter/material.dart';
import 'package:form_example/view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);
  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  final _namecontroller = TextEditingController();
  final _birthplacecontroller = TextEditingController();
  final _birthdatecontroller = TextEditingController();
  final _gendercontroller = TextEditingController();
  final _phonenumbercontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _religioncontroller = TextEditingController();
  final _jobcontroller = TextEditingController();
  final _addresscontroller = TextEditingController();
  final _polycliniccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                controller: _namecontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                controller: _birthplacecontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Birth Place'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                controller: _birthdatecontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Birth Date'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                controller: _gendercontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Gender'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                keyboardType: TextInputType.phone,
                controller: _phonenumbercontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Phone Number'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                controller: _emailcontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                controller: _religioncontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Religion'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                controller: _jobcontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Job'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                controller: _addresscontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Address'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: TextField(
                controller: _polycliniccontroller,
                decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Enter Your Polyclinic'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Validate user input null
                  if (_namecontroller.text.isEmpty ||
                      _birthplacecontroller.text.isEmpty ||
                      _birthdatecontroller.text.isEmpty ||
                      _gendercontroller.text.isEmpty ||
                      _phonenumbercontroller.text.isEmpty ||
                      _emailcontroller.text.isEmpty ||
                      _religioncontroller.text.isEmpty ||
                      _jobcontroller.text.isEmpty ||
                      _addresscontroller.text.isEmpty ||
                      _polycliniccontroller.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Warning !!'),
                          content: const Text(
                              'Please, input all your data needed...'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ViewPage(
                              name: _namecontroller.text,
                              birthplace: _birthplacecontroller.text,
                              birthdate: _birthdatecontroller.text,
                              gender: _gendercontroller.text,
                              phonenumber: _phonenumbercontroller.text,
                              email: _emailcontroller.text,
                              religion: _religioncontroller.text,
                              job: _jobcontroller.text,
                              address: _addresscontroller.text,
                              polyclinic: _polycliniccontroller.text,
                            )));
                  }
                },
                child: const Text('Submit Data'))
          ],
        ),
      ),
    );
  }
}
