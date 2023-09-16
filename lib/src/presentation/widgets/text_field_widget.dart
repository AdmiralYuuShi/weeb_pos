import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/core.dart';

import 'field_title_widget.dart';

class TextFieldWidget extends StatefulWidget {
  final String? title;
  final TextEditingController? controller;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool disabled;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final Widget? leading;
  final bool isRequired;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autovalidateMode;
  final VoidCallback? onEditingComplete;
  final FormFieldSetter<String>? onSaved;
  final bool obscureText;

  const TextFieldWidget({
    Key? key,
    this.controller,
    this.onSubmitted,
    this.keyboardType,
    this.onChanged,
    this.hintText,
    this.inputFormatters,
    this.maxLength,
    this.disabled = false,
    this.leading,
    this.title,
    this.isRequired = false,
    this.validator,
    this.autovalidateMode,
    this.obscureText = false,
    this.onEditingComplete,
    this.onSaved,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  Timer? _debounce;

  final double _kBorderRadius = 11;

  late TextEditingController _effectiveController;

  int currentLength = 0;

  Color get _borderColor => context.colorTheme.borderColor;

  @override
  void initState() {
    _effectiveController = widget.controller ?? TextEditingController();

    if (widget.controller != null) {
      currentLength = widget.controller!.text.length;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          FieldTitleWidget(
            title: widget.title!,
            isRequired: widget.isRequired,
          ),
        if (widget.title != null) AppDimens.verticalSpace10,
        Container(
          decoration: BoxDecoration(
            color: context.colorTheme.mainBgColor,
            borderRadius: BorderRadius.circular(_kBorderRadius),
            border: Border.all(
              color: _borderColor,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              if (widget.leading != null)
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1, color: _borderColor),
                    ),
                  ),
                  child: widget.leading,
                ),
              Expanded(
                child: Padding(
                  padding: context.insets.xy(18, 8),
                  child: TextFormField(
                      validator: widget.validator,
                      autovalidateMode: widget.autovalidateMode,
                      maxLength: widget.maxLength,
                      onEditingComplete: widget.onEditingComplete,
                      onSaved: widget.onSaved,
                      enabled: !widget.disabled,
                      inputFormatters: widget.inputFormatters,
                      obscureText: widget.obscureText,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: widget.hintText,
                        hintStyle: context.textTheme.bodyMedium?.copyWith(color: AppColors.disabled),
                        border: InputBorder.none,
                      ),
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: context.colorTheme.primaryColor,
                      ),
                      controller: _effectiveController,
                      onFieldSubmitted: widget.onSubmitted,
                      keyboardType: widget.keyboardType,
                      onChanged: (val) {
                        if (_debounce?.isActive ?? false) _debounce?.cancel();
                        _debounce = Timer(
                          const Duration(milliseconds: 500),
                          () {
                            if (widget.onChanged != null) widget.onChanged!(val);
                            if (widget.maxLength != null) {
                              setState(() {
                                currentLength = val.length;
                              });
                            }
                          },
                        );
                      },
                      buildCounter: (
                        BuildContext context, {
                        required int currentLength,
                        required int? maxLength,
                        required bool isFocused,
                      }) =>
                          null),
                ),
              ),
              if (widget.maxLength != null)
                Container(
                  padding: context.insets.xy(18, 12),
                  decoration: BoxDecoration(
                    border: Border(left: BorderSide(width: 1, color: _borderColor)),
                  ),
                  child: Text(
                    '$currentLength/${widget.maxLength}',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorTheme.primaryColor,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
