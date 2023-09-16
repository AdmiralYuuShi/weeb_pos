import 'package:flutter/material.dart';
import 'package:weeb_pos/src/core/core.dart';

class OrderItemGrouped {
  final String itemId;
  final String itemName;
  final double itemPrice;
  final int qty;

  OrderItemGrouped({required this.itemId, required this.itemName, required this.itemPrice, required this.qty});
}

class OrderItemWidget extends StatelessWidget {
  final OrderItemGrouped item;
  const OrderItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.insets.vertical(6),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.itemName),
                Text(
                  'Rp${item.itemPrice}',
                  style: context.textTheme.bodyMedium?.copyWith(color: AppColors.accent, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '${item.qty}',
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              '${item.itemPrice * item.qty}',
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
