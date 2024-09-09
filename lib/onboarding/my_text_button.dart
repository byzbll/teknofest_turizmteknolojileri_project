import 'package:flutter/material.dart';
import 'size_config.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
  }) : super(key: key);
  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8.0),
      child: SizedBox(
        height: SizeConfig.blockSizeHorizontal! * 15.5,
        width: SizeConfig.blockSizeHorizontal! * 100,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
          ),
        ),
      ),
    );
  }
}
