import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter_together/01_kakao_t/presentation/main/components/promotion_card_widget.dart';

import '../../../data/model/promotion.dart';

class HomeTab extends StatelessWidget {
  final List<Promotion> _promotions = [
    const Promotion(
      title: '아이유',
      subtitle: '아이가 아니에요',
      imageUrl:
          'https://i.namu.wiki/i/BN1Z3IbM4VoVibKa-QU_sVlmYeBGddpnfQHOlW1InGTFxPLuQqZ397HpsPvgI4ZS-nlvOFGVjOF9z6g3RVn1_A.webp',
      color: Colors.yellow,
    ),
    const Promotion(
      title: '아이유',
      subtitle: '아이가 아니에요',
      imageUrl:
          'https://i.namu.wiki/i/BN1Z3IbM4VoVibKa-QU_sVlmYeBGddpnfQHOlW1InGTFxPLuQqZ397HpsPvgI4ZS-nlvOFGVjOF9z6g3RVn1_A.webp',
      color: Colors.yellow,
    ),
    const Promotion(
      title: '아이유',
      subtitle: '아이가 아니에요',
      imageUrl:
          'https://i.namu.wiki/i/BN1Z3IbM4VoVibKa-QU_sVlmYeBGddpnfQHOlW1InGTFxPLuQqZ397HpsPvgI4ZS-nlvOFGVjOF9z6g3RVn1_A.webp',
      color: Colors.yellow,
    ),
  ];

  HomeTab({super.key});

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
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/bike.png',
                  ),
                  const Text('바이크'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/bike.png',
                  ),
                  const Text('바이크'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/bike.png',
                  ),
                  const Text('바이크'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/bike.png',
                  ),
                  const Text('바이크'),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/bike.png',
                  ),
                  const Text('바이크'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/bike.png',
                  ),
                  const Text('바이크'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/bike.png',
                  ),
                  const Text('바이크'),
                ],
              ),
            ),
            const Expanded(
              child: Spacer(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _promotionSection() {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: PageView(
        children: [
          PromotionCardWidget(
            promotion: _promotions[0],
          ),
          PromotionCardWidget(
            promotion: _promotions[0],
          ),
          PromotionCardWidget(
            promotion: _promotions[0],
          ),
        ],
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
