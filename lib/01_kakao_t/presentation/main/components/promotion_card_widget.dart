import 'package:flutter/material.dart';
import 'package:learn_flutter_together/01_kakao_t/data/model/promotion.dart';

class PromotionCardWidget extends StatelessWidget {
  final Promotion promotion;

  const PromotionCardWidget({
    super.key,
    required this.promotion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: promotion.color,
          borderRadius: BorderRadius.circular(20), // 코너를 둥글게 하는 부분입니다.
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  promotion.title,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  promotion.subtitle,
                  style: const TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                promotion.imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
