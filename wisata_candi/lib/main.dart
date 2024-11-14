import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/detail_screen.dart';
import 'package:wisata_candi/favorite_screen.dart';
import 'package:wisata_candi/home_screen.dart';
import 'package:wisata_candi/profile_screen.dart';
import 'package:wisata_candi/search_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wisata Candi",
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //TODO1 : Deklarasi Variabel
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO2 : Buat body berupa widget yang ditampilkan
      body: _children[_currentIndex],
      //TODO3 : Buat bottomNavigatorBar dengan nilai Theme
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.deepPurple[50]
        ), 
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[100],
          showUnselectedLabels: true,
          items: const[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home, 
                color: Colors.deepPurple,
                ),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search, 
                color: Colors.deepPurple,
                ),
              label: "Search"
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite, 
                color: Colors.deepPurple,
                ),
              label: "Favorite"
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person, 
                color: Colors.deepPurple,
                ),
              label: "Profile"
            ),
          ]
        )
      ),
      //TODO4 : Buat data dan child dari Theme
    );
  }
}