import 'package:flutter/material.dart';

/// CoinListItem =
/// [coinName] name of coin

class CoinListItem extends StatelessWidget {
  final String coins;

  /// [coinName] name of coin
  const CoinListItem({Key? key, required this.coins}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.withOpacity(0.05)),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pinkAccent.withOpacity(0.3),
            ),
            child: Center(
              child: Text('Icon'),
            ),
            height: 60,
            width: 60,
          ),
          const SizedBox(width: 20),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "coins.id",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "coins.symbol",
                    style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  ),
                ],
              ),
              const SizedBox(
                width: 80,
              ),
              Column(
                children: [
                  Text(
                    "coins.priceUsd",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "coins.changePercent24Hr",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
