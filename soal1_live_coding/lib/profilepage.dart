
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
                      .textTheme.headlineSmall,
                ),

                const SizedBox(height: 8),

                Text(
                  '1124160053',
                  style: Theme.of(context)
                      .textTheme.bodyMedium,
                ),

                const SizedBox(height: 5),

                Text(
                  'Teknik Informatika',
                  style: Theme.of(context)
                      .textTheme.bodyMedium,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
