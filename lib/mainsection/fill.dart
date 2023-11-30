import 'package:flutter/material.dart';

class Fill extends StatelessWidget {
  final String title;

  const Fill({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 49,
          height: 32,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.black.withOpacity(0.07999999821186066),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 34, height: 7),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 12, height: 18),
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0.09,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 12, height: 18),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(width: 34, height: 7),
            ],
          ),
        ),
      ],
    );
  }
}