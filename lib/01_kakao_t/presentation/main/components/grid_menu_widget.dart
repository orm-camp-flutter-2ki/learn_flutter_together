import 'package:flutter/material.dart';

import '../../../data/model/menu.dart';

class GridMenuWidget extends StatelessWidget {
  final List<Menu> menuList;

  const GridMenuWidget({
    super.key,
    required this.menuList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      children: menuList.map((e) {
        return Column(children: [
          Image.asset(
            'assets/bike.png',
          ),
          const Text('바이크'),
        ]);
      }).toList(),
    );
  }
}
