import 'package:flutter/material.dart';
import 'package:weeb_pos/src/core/core.dart';
import 'package:weeb_pos/src/presentation/widgets/button_primary_widget.dart';
import 'package:weeb_pos/src/presentation/widgets/text_field_widget.dart';

import '../../../../../core/utils/utils_formatters.dart';
import 'enter_payment_btn_widget.dart';

class EnterPaymentWidget extends StatefulWidget {
  final double total;
  final Function(double) onSelectPayment;
  EnterPaymentWidget({super.key, required this.total, required this.onSelectPayment});

  @override
  State<EnterPaymentWidget> createState() => _EnterPaymentWidgetState();
}

class _EnterPaymentWidgetState extends State<EnterPaymentWidget> {
  TextEditingController _paymentInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.insets.horizontal(16),
      child: Column(
        children: [
          AppDimens.verticalSpace10,
          Row(
            children: [
              Text(
                '+',
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 26,
                  color: AppColors.mainBg,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppDimens.horizontalSpace10,
              Expanded(
                child: TextFieldWidget(
                  controller: _paymentInputController,
                  hintText: '${widget.total}',
                  keyboardType: TextInputType.number,
                  inputFormatters: [UtilsFormatters.intInput()],
                  onSubmitted: (val) {
                    widget.onSelectPayment(double.tryParse(val) ?? 0);
                  },
                ),
              ),
              AppDimens.horizontalSpace10,
              ButtonPrimaryWidget(
                text: 'INPUT',
                onPressed: () {
                  widget.onSelectPayment(
                    _paymentInputController.text.isNotEmpty
                        ? (double.tryParse(_paymentInputController.text) ?? 0)
                        : widget.total,
                  );
                },
              ),
            ],
          ),
          AppDimens.verticalSpace10,
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: inputList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                crossAxisCount: context.isMobile ? 2 : 6,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                height: 50,
              ),
              itemBuilder: (context, index) {
                int val = inputList[index];
                return EnterPaymentBtnWidget(
                  value: val,
                  onSelect: (v) {
                    widget.onSelectPayment(v.toDouble());
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  final List<int> inputList = [1000, 2000, 5000, 10000, 20000, 50000, 100000];
}
