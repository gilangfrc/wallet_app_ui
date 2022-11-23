import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app_ui/pages/bottom_menu/history_page.dart';
import 'package:wallet_app_ui/pages/bottom_menu/home_page.dart';
import 'package:wallet_app_ui/pages/bottom_menu/profile_page.dart';
import 'package:wallet_app_ui/pages/bottom_menu/promo_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List _pages = [
    HomePage(),
    HistoryPage(),
    PromoPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: _pages[_selectedIndex], // menu
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {},
          backgroundColor: Colors.blue[500],
          child: const Icon(Icons.qr_code_scanner_rounded, size: 35),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 0.5,
            )
          ],
        ),
        child: BottomAppBar(
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                icon: const Icon(Icons.home_rounded),
                color: _selectedIndex == 0 ? Colors.blue[500] : Colors.grey,
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                icon: const Icon(Icons.history_rounded),
                color: _selectedIndex == 1 ? Colors.blue[500] : Colors.grey,
              ),
              const SizedBox(
                width: 70,
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                icon: const Icon(Icons.confirmation_num_rounded),
                color: _selectedIndex == 2 ? Colors.blue[500] : Colors.grey,
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
                icon: const Icon(Icons.person_rounded),
                color: _selectedIndex == 3 ? Colors.blue[500] : Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
