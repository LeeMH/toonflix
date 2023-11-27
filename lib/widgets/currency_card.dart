import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final name, balance, currency;
  final IconData icon;
  final int order;
  final isInverted;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.balance,
    required this.currency,
    required this.icon,
    required this.order,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order * -25),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : const Color(0xFF1F2123),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
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
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        balance,
                        style: TextStyle(
                          color: isInverted ? Colors.black : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        currency,
                        style: TextStyle(
                          color: isInverted
                              ? Colors.black.withOpacity(0.8)
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.translate(
                offset: const Offset(8, 15),
                child: Transform.scale(
                  scale: 2.2,
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.black : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
