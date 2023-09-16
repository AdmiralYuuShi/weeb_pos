import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:weeb_pos/src/presentation/pages/pos/widgets/order/order_payment_widget.dart';
import 'package:weeb_pos/src/presentation/widgets/button_secondary_widget.dart';
import '../../../core/core.dart';

import '../../presentation.dart';
import '../../widgets/button_primary_widget.dart';
import 'widgets/order/order_summary_widget.dart';
import 'widgets/order/order_table_widget.dart';
import 'widgets/order/select_item_group_widget.dart';

class AddOrderPage extends StatefulWidget {
  final Function onCancel;

  const AddOrderPage({super.key, required this.onCancel});

  @override
  State<AddOrderPage> createState() => _AddOrderPageState();
}

class _AddOrderPageState extends State<AddOrderPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return Column(
          children: [
            const Expanded(child: OrderTableWidget()),
            OrderSummaryWidget(
              orderNumber: 1201,
              total: dummyItems.map((e) => e.itemPrice * e.qty).sum,
            ),
            Expanded(
              child: IndexedStack(
                index: pageIndex,
                children: [
                  const SelectItemGroupWidget(),
                  OrderPaymentWidget(totalPayment: dummyItems.map((e) => e.itemPrice * e.qty).sum),
                ],
              ),
            ),
            Padding(
              padding: context.insets.xy(16, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonPrimaryWidget(
                    text: 'Cancel',
                    padding: context.insets.xy(10, 10),
                    color: AppColors.danger,
                    textColor: AppColors.mainBg,
                    onPressed: () {
                      _onSelectPage(0);
                      widget.onCancel();
                    },
                  ),
                  Row(
                    children: [
                      ButtonSecondaryWidget(
                        icon: Ionicons.reader_outline,
                        iconSize: 20,
                        borderColor: AppColors.mainBg,
                        padding: context.insets.vertical(8),
                        onPressed: () {},
                      ),
                      AppDimens.horizontalSpace10,
                      ButtonPrimaryWidget(
                        text: pageIndex == 0 ? 'Lanjut' : 'Selesai',
                        padding: context.insets.xy(28, 10),
                        onPressed: () {
                          if (pageIndex == 0) {
                            _onSelectPage(1);
                          } else {
                            _onSelectPage(0);
                            widget.onCancel();
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void _onSelectPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}
