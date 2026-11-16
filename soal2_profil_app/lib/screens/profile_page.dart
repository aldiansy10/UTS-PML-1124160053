// lib/screens/profile_page.dart
import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../widgets/info_tile.dart';
import 'edit_profile_page.dart';
import 'about_page.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Data profil kamu
  ProfileModel profile = ProfileModel(
    name: 'Muhammad Aldiansyah',
    nim: '1124160053',
    studyProgram: 'Teknik Informatika (Software Engineering)',
    className: 'TI24PSE-3',
    email: 'aldian@student.ac.id',
    phone: '081234567890',
    github: 'github.com/aldiansyah',
    bio: 'Mahasiswa pengembang perangkat lunak yang berfokus pada Flutter.',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () async {
              final updatedProfile = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(profile: profile),
                ),
              );
              if (updatedProfile != null) {
                setState(() {
                  profile = updatedProfile;
                });
              }
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(profile.name),
              accountEmail: Text('${profile.nim} - ${profile.className}'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/fotoku.jpg'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil Utama'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Saya'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Keluar', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Foto Profil Utama Menggunakan Aset Lokal
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/fotoku.jpg'),
            ),
            const SizedBox(height: 12),
            Text(
              profile.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              '${profile.nim} | ${profile.className}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Divider(),
            ),
            InfoTile(icon: Icons.school, title: 'Program Studi', subtitle: profile.studyProgram),
            InfoTile(icon: Icons.email, title: 'Email', subtitle: profile.email),
            InfoTile(icon: Icons.phone, title: 'Nomor Telepon', subtitle: profile.phone),
            InfoTile(icon: Icons.code, title: 'GitHub', subtitle: profile.github),
            InfoTile(icon: Icons.book, title: 'Bio Singkat', subtitle: profile.bio),
          ],
        ),
      ),
    );
  }
}