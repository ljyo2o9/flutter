import 'package:flutter/material.dart';

class MakeCard extends StatelessWidget {
  final cardColor, money, moneyColor, moneyInt, moneyIcon, moneyunit, iconColor;

  const MakeCard({
    super.key,
    required this.cardColor,
    required this.money,
    required this.moneyColor,
    required this.moneyIcon,
    required this.moneyInt,
    required this.moneyunit,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  money,
                  style: TextStyle(
                    color: moneyColor, //Colors.white
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      moneyInt,
                      style: TextStyle(
                        color: moneyColor, //Colors.white
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      moneyunit, //'EUR'
                      style: TextStyle(
                        color: moneyColor.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: Offset(-5, 12),
                child: Icon(
                  moneyIcon,
                  color: iconColor,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
