import 'package:flutter/material.dart';
import 'package:weeb_pos/src/presentation/widgets/button_secondary_widget.dart';
import '../../../../../core/core.dart';
import 'enter_payment_widget.dart';

class OrderPaymentWidget extends StatefulWidget {
  final double totalPayment;

  const OrderPaymentWidget({super.key, required this.totalPayment});

  @override
  State<OrderPaymentWidget> createState() => _OrderPaymentWidgetState();
}

class _OrderPaymentWidgetState extends State<OrderPaymentWidget> {
  double paymentEntered = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: context.colorTheme.borderColor,
          padding: context.insets.horizontal(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Bayar : '),
                  Text(
                    'Rp${paymentEntered.toInt()}',
                    style: context.textTheme.labelLarge?.copyWith(fontSize: 20, color: AppColors.mainBg),
                  ),
                ],
              ),
              AppDimens.verticalSpace4,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonSecondaryWidget(
                    text: 'Reset',
                    borderColor: AppColors.mainBg,
                    padding: context.insets.xy(10, 4),
                    onPressed: () {
                      setState(() {
                        paymentEntered = 0;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Kembalian : '),
                      Text(
                        paymentEntered > widget.totalPayment
                            ? 'Rp${(paymentEntered - widget.totalPayment).toInt()}'
                            : 'Rp0',
                        style: context.textTheme.labelLarge?.copyWith(fontSize: 20, color: AppColors.mainBg),
                      ),
                    ],
                  ),
                ],
              ),
              AppDimens.verticalSpace10,
            ],
          ),
        ),
        Expanded(
          child: EnterPaymentWidget(
            total: widget.totalPayment,
            onSelectPayment: (val) {
              setState(() {
                paymentEntered += val;
              });
            },
          ),
        ),
      ],
    );
  }
}
