import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;

  void _uptadeIndex(int indexValue) {
    setState(() {
      _index = indexValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25, left: 25, bottom: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 65,
            color: Colors.grey.withOpacity(.4),
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _bottomAppBarItem(index: 0, icon: CupertinoIcons.home),
                  _bottomAppBarItem(index: 1, icon: CupertinoIcons.heart),
                  _bottomAppBarItem(index: 2, icon: CupertinoIcons.settings),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _bottomAppBarItem({required int index, required IconData icon}) {
    return Expanded(
        child: RawMaterialButton(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      onPressed: () => _uptadeIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            icon,
            size: 25,
          ),
        ],
      ),
    ));
  }
}
