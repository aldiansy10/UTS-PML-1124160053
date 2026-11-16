import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  final List<String> skills = const [
    'Flutter & Dart',
    'UI/UX Design',
    'Git & GitHub',
    'Database Dasar'
  ];

  final List<String> education = const [
    'Institut Teknologi dan Bisnis Bina Sarana Global',
    'SMA / Sederajat'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Saya')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Keahlian', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ...skills.map((item) => Card(
                child: ListTile(
                  leading: const Icon(Icons.check_circle, color: Colors.green),
                  title: Text(item),
                ),
              )),
          const SizedBox(height: 20),
          const Text('Pendidikan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ...education.map((edu) => Card(
                child: ListTile(
                  leading: const Icon(Icons.school, color: Colors.blue),
                  title: Text(edu),
                ),
              )),
        ],
      ),
    );
  }
}