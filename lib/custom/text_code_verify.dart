import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextCodeVerify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      autofocus: false,
      //onSaved: (pin1){},
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: '',
        counterText: '',
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
