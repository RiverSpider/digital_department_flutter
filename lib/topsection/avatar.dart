import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage("images/avatar.png"),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x7A1D1D25),
                blurRadius: 24,
                offset: Offset(0, 16),
                spreadRadius: -16,
              )
            ],
          ),
        ),
      ],
    );
  }
}
