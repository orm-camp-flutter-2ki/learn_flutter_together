import 'package:flutter/material.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/components/grid_menu_widget.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/components/promotion_card_widget.dart';

import '../../../data/model/menu.dart';
import '../../../data/model/promotion.dart';

class HomeTab extends StatelessWidget {
  final List<Promotion> promotions;
  final List<Menu> menuList;

  const HomeTab({
    super.key,
    required this.promotions,
    required this.menuList,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _menuSection(),
          _promotionSection(),
          _noticeSection(),
        ],
      ),
    );
  }

  Widget _menuSection() {
    return GridMenuWidget(menuList: menuList);
  }

  Widget _promotionSection() {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: PageView(
        children: promotions
            .map((promotion) => PromotionCardWidget(promotion: promotion))
            .toList(),
      ),
    );
  }

  Widget _noticeSection() {
    return Column(
      children: List.generate(20, (index) {
        return Row(
          children: [
            const Icon(Icons.alarm),
            Text('공지공지$index'),
          ],
        );
      }),
    );
  }
}
