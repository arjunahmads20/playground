import 'package:flutter/material.dart';
import 'tutorial_11_2.dart';

class MyApp11_1 extends StatefulWidget {
  const MyApp11_1({super.key});

  @override
  State<MyApp11_1> createState() => _MyApp11_1State();
}

class _MyApp11_1State extends State<MyApp11_1> {
  int selected = 0;
  PageController pc = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[100],
      appBar: AppBar(
        title: const Text('Menu Navigasi'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: PageView(
          controller: pc,
          onPageChanged: (index) {
            setState(() {
              selected = index;
            });
          },
          children: [
            // ==========================================
            // HALAMAN 1 (INDEX 0): HOME (Tombol Kembali)
            // ==========================================
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.widgets_outlined,
                    size: 100,
                    color: Colors.blue[300],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Halaman Navigasi',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Geser ke kanan atau gunakan menu di bawah',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.arrow_back),
                    label: const Text(
                      'Kembali ke Dashboard',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Kembali ke Dashboard utama
                    },
                  ),
                ],
              ),
            ),

            // Perubahan dari tutorial_11_2
            MyApp_11_2(),

            // ==========================================
            // HALAMAN 3 (INDEX 2): PROFILE
            // ==========================================
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profpic.png'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Kelompok 2',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Informatika - Telkom University',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text('Edit Profil'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: selected,
        elevation: 10,
        onTap: (index) {
          setState(() {
            selected = index;
          });
          pc.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  // Widget tambahan (helper) untuk membuat list email
  Widget _buildEmailItem(
    String sender,
    String subject,
    String time,
    bool isUnread,
  ) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue[100],
          child: Icon(Icons.mail, color: Colors.blue[700]),
        ),
        title: Text(
          sender,
          style: TextStyle(
            fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        subtitle: Text(
          subject,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: isUnread ? Colors.black87 : Colors.grey),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              time,
              style: TextStyle(
                color: isUnread ? Colors.blue : Colors.grey,
                fontSize: 12,
              ),
            ),
            if (isUnread) ...[
              const SizedBox(height: 5),
              const CircleAvatar(radius: 4, backgroundColor: Colors.blue),
            ],
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
