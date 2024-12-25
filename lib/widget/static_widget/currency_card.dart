import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge, // overflow된 요소를 짤라낸다.
      decoration: BoxDecoration(
          color: isInverted ? Colors.white : blackColor,
          borderRadius: BorderRadiusDirectional.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted ? blackColor : Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                          color: isInverted ? blackColor : Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2, // 다른 요소의? 크기를 건드리지 않고, 지만 커진다.
              child: Transform.translate(
                offset: Offset(-4, 7),
                child: Icon(
                  icon,
                  color: isInverted ? blackColor : Colors.white,
                  size: 45,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
