import 'package:flutter/material.dart';


class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({Key? key, required this.name, required this.onPressed})
      : super(key: key);
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        name,
        style: TextStyle(
            color: Color(0xff4C7972), fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
