import 'package:flutter/material.dart';
import 'package:learn_flutter_together/00_layout/repository/idol_repository.dart';
import 'package:learn_flutter_together/01_kakao_t/data/model/promotion.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/tabs/home_tab.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/tabs/profile_tab.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/tabs/service_tab.dart';

import '../../data/model/menu.dart';

class MainScreen extends StatefulWidget {
  final IdolRepository idolRepository;

  const MainScreen({
    super.key,
    required this.idolRepository,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = [
      HomeTab(
        promotions: widget.idolRepository
            .getIdols()
            .map((idol) => Promotion(
                  title: idol.title,
                  subtitle: idol.subTitle,
                  imageUrl: idol.imageUrl,
                  color: Colors.yellow,
                ))
            .toList(),
        menuList: List.generate(
          7,
          (index) => const Menu(title: '바이크', imagePath: 'assets/bike.png'),
        ),
      ),
      const ServiceTab(),
      const ProfileTab(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Takao T'),
        elevation: 4,
      ),
      body: tabs[_selectedIndex],
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
