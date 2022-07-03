import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String hintTextCustom;
  final String labelTextCustom;
  final TextEditingController textEditingController;
  final FormFieldValidator<String>? validator;
  final bool? obscure;
  final Widget? widgetIcon;

  TextFormFieldCustom({
    required this.hintTextCustom,
    required this.labelTextCustom,
    required this.textEditingController,
    this.validator,
    this.obscure,
    this.widgetIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscure!,
      autocorrect: true,
      validator: validator,
      maxLines: obscure == false ? null : 1,
      decoration: InputDecoration(
        hintText: hintTextCustom,
        labelText: labelTextCustom,
        icon: widgetIcon,
        suffixIcon: IconButton(
          onPressed: () {
            textEditingController.clear();
          },
          icon: Icon(
            Icons.clear,
          ),
        ),
      ),
    );
  }
}
