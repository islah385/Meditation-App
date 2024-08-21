import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonWidget extends StatelessWidget {
  String shwntext;
  String textbtn;
  void Function() ontap;

  CustomButtonWidget({
    required this.shwntext,
    required this.textbtn,
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          shwntext,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        TextButton(
            onPressed: ontap,
            child: Text(
              textbtn,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ))
      ],
    );
  }
}
