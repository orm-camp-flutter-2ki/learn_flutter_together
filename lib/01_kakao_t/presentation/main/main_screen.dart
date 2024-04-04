import 'package:flutter/material.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/tabs/home_tab.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/tabs/profile_tab.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/tabs/service_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _tabs = [
    HomeTab(),
    const ServiceTab(),
    const ProfileTab(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Takao T'),
        elevation: 4,
      ),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: '이용서비스',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: '내 정보',
          ),
        ],
      ),
    );
  }
}
