import 'package:flutter/material.dart';

class currencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final _blackColor = const Color(0xff1F2123);
  final int order;

  const currencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.isInverted,
      required this.order,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -order * 40),
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isInverted ? _blackColor : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: isInverted ? Colors.white : _blackColor),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: isInverted ? Colors.white : _blackColor),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            color: isInverted
                                ? Colors.white
                                : _blackColor.withOpacity(0.8)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(5, 16),
                child: Icon(
                  icon,
                  color: isInverted ? Colors.white : _blackColor,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
