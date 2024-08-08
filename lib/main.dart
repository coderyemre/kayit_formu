import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Öğrenci Kayıt Formu';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _birthdateController = TextEditingController();
  final _schoolController = TextEditingController();
  final _departmentController = TextEditingController();
  final _studentNumberController = TextEditingController();
  final _noteController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _birthdateController.dispose();
    _schoolController.dispose();
    _departmentController.dispose();
    _studentNumberController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('Adınız: ${_nameController.text}');
      print('Soyadınız: ${_surnameController.text}');
      print('E-mailiniz: ${_emailController.text}');
      print('Telefon Numaranız: ${_phoneController.text}');
      print('Doğum Tarihiniz: ${_birthdateController.text}');
      print('Hangi Okulda Okuyorsunuz: ${_schoolController.text}');
      print('Hangi Bölüm: ${_departmentController.text}');
      print('Öğrenci Numaranız: ${_studentNumberController.text}');
      print('Not Ortalamanız: ${_noteController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Adınız',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Adınızı girin';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _surnameController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Soyadınız',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Soyadınızı girin';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'E-mailiniz',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty||!value.contains('@')) {
                      return 'E-mailinizi girin';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Telefon Numaranız',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Telefon numaranızı girin';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _birthdateController,
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Doğum Tarihiniz',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Doğum tarihinizi girin';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _schoolController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Hangi Okulda Okuyorsunuz',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Okulunuzu girin';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _departmentController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Hangi Bölüm',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Bölümünüzü girin';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _studentNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Öğrenci Numaranız',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Öğrenci numaranızı girin';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _noteController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Not Ortalamanız',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Not ortalamanızı girin';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Gönder'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
