import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  int index;
  String selectImagePath;
  bool isSelected;
  AnimationController animationController;
  
  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath:'assets/images/tab_1.png',
      selectImagePath: 'assets/images/tab_1s.png',
      index: 0,
      isSelected: true,
      animationController: null
    ),
    TabIconData(
      imagePath:'assets/images/tab_2.png',
      selectImagePath:'assets/images/tab_2s.png',
      index: 1,
      isSelected: false,
      animationController: null
    ),
    TabIconData(
      imagePath:'assets/images/tab_3.png',
      selectImagePath:'assets/images/tab_3s.png',
      index: 2,
      isSelected: false,
      animationController: null
    ),
    TabIconData(
      imagePath:'assets/images/tab_4.png',
      selectImagePath:'assets/images/tab_4s.png',
      index: 3,
      isSelected: false,
      animationController: null
    )
  ];

}