import 'package:flutter/material.dart';
import 'package:weeb_pos/src/core/core.dart';

class OrderSummaryWidget extends StatelessWidget {
  final int orderNumber;
  final double total;
  const OrderSummaryWidget({super.key, required this.orderNumber, required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.insets.xy(16, 8),
      color: context.colorTheme.borderColor,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('No.'),
                    Text(
                      '$orderNumber',
                      style: context.textTheme.labelLarge?.copyWith(fontSize: 28),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Total : '),
                  Text(
                    'Rp$total',
                    style: context.textTheme.labelLarge?.copyWith(fontSize: 28, color: AppColors.accent),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
