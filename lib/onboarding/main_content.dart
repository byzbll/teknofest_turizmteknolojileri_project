import 'package:flutter/material.dart';
import 'onboarding_model.dart';

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
    required this.sizeV,
    required List<OnboardingModel> list,
    required this.index,
  })  : _list = list,
        super(key: key);

  final double sizeV;
  final List<OnboardingModel> _list;
  final index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: Column(
        children: [
          SizedBox(height: sizeV * 2),
          Image.asset(
            _list[index].image,
            fit: BoxFit.cover,
            height: sizeV * 48,
          ),
          SizedBox(height: sizeV * 3),
          Text(
            _list[index].title,
            style: TextStyle(
              color: Color(0xff4C7972),
              fontWeight: FontWeight.w400,
              fontSize: 30,
            ),
          ),
          SizedBox(height: sizeV * 2),
          Expanded(
            flex: 1,
            child: Text(
              _list[index].text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff4C7972),
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
