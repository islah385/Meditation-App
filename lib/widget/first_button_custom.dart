import 'package:flutter/material.dart';
import 'package:meditation_app/utils/constants.dart';

// ignore: must_be_immutable
class FirstButtonCustom extends StatelessWidget {
  String bName;
  void Function() onTap;

  FirstButtonCustom({
    super.key,
    required this.bName,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: ElevatedButton(

        
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: kButtonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          bName,
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
