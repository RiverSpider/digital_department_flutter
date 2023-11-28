import 'package:flutter/material.dart';

import 'appbar.dart';
import 'avatar.dart';
import 'background.dart';
import 'name.dart';
import 'navigationbuttons.dart';
class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 375,
          height: 306,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Background(),
              ),
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                child: Bar(),
              ),
              Positioned(
                left: 0,
                top: 250,
                child: NavigationButtons(),
              ),
              Positioned(
                left: 126,
                top: 204,
                child: Name(),
              ),
              Positioned(
                left: 135,
                top: 58,
                child: Avatar(),
              ),
            ],
          ),
        ),
        // Добавляем AppBar с отступом 44 пикселя от верха экрана
      ],
    );
  }
}