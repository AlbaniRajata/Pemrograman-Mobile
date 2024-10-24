import 'package:flutter/material.dart';
import 'about_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(98, 0, 151, 1),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/images/Vector2.png',
                    width: double.infinity,
                  ),
                ),
                const Positioned(
                  top: 40,
                  left: 16,
                  right: 16,
                  child: Text(
                    'Home Page',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: GridView.count(
                crossAxisCount: 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  MenuButton( //menu button about dan profile
                    iconPath: 'assets/images/about.png',
                    label: 'About',
                    description: 'Informasi tentang aplikasi ini',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AboutPage()),
                      );
                    },
                    color: const Color.fromRGBO(252, 132, 34, 1),
                  ),
                  MenuButton(
                    iconPath: 'assets/images/profile.png',
                    label: 'Profile',
                    description: 'Lihat dan edit profil Anda',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage(username: username)),
                      );
                    },
                    color: const Color.fromRGBO(35, 162, 126, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget { //class untuk definisi isi dari menu button
  final String iconPath;
  final String label;
  final String description;
  final VoidCallback onTap;
  final Color color;

  const MenuButton({
    super.key,
    required this.iconPath,
    required this.label,
    required this.description,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) { //bentuk, shadow, text, ukuran dari menu button
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                iconPath,
                width: 40,
                height: 40,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: TextStyle(color: color, fontSize: 16, fontFamily: 'Sublima', fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: TextStyle(color: color, fontSize: 12, fontFamily: 'Sublima'),
                  ),
                ],
              ),
            ),
            Container(
              width: 10,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}