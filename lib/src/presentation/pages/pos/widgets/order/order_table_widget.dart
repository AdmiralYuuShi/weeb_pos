import 'package:flutter/material.dart';
import 'package:weeb_pos/src/core/core.dart';

import '../../../../presentation.dart';
import 'order_item_widget.dart';

class OrderTableWidget extends StatelessWidget {
  const OrderTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.insets.horizontal(16),
      child: Column(
        children: [
          AppDimens.verticalSpace16,
          Row(
            children: [
              _rowHeader(context, 3, 'Item', TextAlign.start),
              _rowHeader(context, 1, 'Qty'),
              _rowHeader(context, 2, 'Total', TextAlign.end),
            ],
          ),
          const Divider(),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: dummyItems.length,
              separatorBuilder: (_, __) => const AppDivider(),
              itemBuilder: (context, index) {
                OrderItemGrouped item = dummyItems[index];
                return OrderItemWidget(item: item);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _rowHeader(BuildContext context, int flex, String text, [TextAlign? textAlign]) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

List<OrderItemGrouped> dummyItems = [
  OrderItemGrouped(itemId: 'a', itemName: 'Es Kelapa Muda Gula Merah', itemPrice: 10000, qty: 4),
  OrderItemGrouped(itemId: 'b', itemName: 'Es Kelapa Muda Gula Putih', itemPrice: 10000, qty: 2),
  OrderItemGrouped(itemId: 'c', itemName: 'Nasi Nugget', itemPrice: 20000, qty: 4),
  OrderItemGrouped(itemId: 'd', itemName: 'Nugget + Sosis', itemPrice: 15000, qty: 2),
  OrderItemGrouped(itemId: 'd2', itemName: 'Nasi + Nugget + Sosis', itemPrice: 15000, qty: 2),
  OrderItemGrouped(itemId: 'd3', itemName: 'Combo Nugget + Es Kelapa', itemPrice: 25000, qty: 2),
  OrderItemGrouped(itemId: 'd4', itemName: 'Full Combo', itemPrice: 30000, qty: 2),
  OrderItemGrouped(itemId: 'd5', itemName: 'Es Teh Panas', itemPrice: 5000, qty: 8),
  OrderItemGrouped(
    itemId: 'e',
    itemName: 'Takoyaki dengan isian tako beneran coy, ini sengaja judul nya dipanjangin btw',
    itemPrice: 50000,
    qty: 2,
  ),
];
