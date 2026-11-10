import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.chat),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(height: 30),

                const CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),

                const SizedBox(height: 15),

                Text(
                  'Muhammad Aldiansyah',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall,
                ),

                const SizedBox(height: 8),

                Text(
                  '1124160053',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium,
                ),

                const SizedBox(height: 5),

                Text(
                  'Teknik Informatika',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium,
                ),

                const SizedBox(height: 20),

                Card(
                  child: Column(
                    children: const [
                      InfoTile(
                        icon: Icons.email,
                        label: Text('Email'),
                        subtitle: Text('muhammad.aldiansyah@mhs.ac.id'),
                      ),
                      InfoTile(
                        icon: Icons.phone,
                        label: Text('Nomor HP'),
                        subtitle: Text('081234567890'),
                      ),
                      InfoTile(
                        icon: Icons.class_,
                        label: Text('Kelas'),
                        subtitle: Text('TI24PSE-3'),
                      ),
                      InfoTile(
                        icon: Icons.code,
                        label: Text('Akun GitHub'),
                        subtitle: Text('github.com/aldian'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                Card(
                  child: Column(
                    children: const [
                      InfoTile(
                        icon: Icons.code,
                        label: Text('Keahlian'),
                        subtitle: Text('Programer & Futsal'),
                      ),
                      InfoTile(
                        icon: Icons.design_services,
                        label: Text('Desain'),
                        subtitle: Text('UI/UX & Figma'),
                      ),
                      InfoTile(
                        icon: Icons.sports_esports,
                        label: Text('Hobi'),
                        subtitle: Text('Mancing & futsal'),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final Text label;
  final Text subtitle;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: label,
      subtitle: subtitle,
    );
  }
}