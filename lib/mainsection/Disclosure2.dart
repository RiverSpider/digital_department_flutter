import 'package:flutter/material.dart';

class Disclosure2 extends StatelessWidget {
  final String title;
  final String image;
  const Disclosure2({super.key, required this.title, required this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 64,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 375, height: 12),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(width: 16, height: 40),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(width: 36, height: 2),
                                Container(
                                  width: 36,
                                  height: 36,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 4,
                                        top: 8.41,
                                        child: Container(
                                          width: 27,
                                          height: 19.18,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(image),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(width: 36, height: 2),
                              ],
                            ),
                          ),
                          Container(width: 12, height: 40),
                          Container(
                            width: 263,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    title,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      height: 0.08,
                                      letterSpacing: -0.40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(width: 16, height: 40),
                          Container(
                            width: 24,
                            height: 24,
                            child: Stack(children: [
                              Icon(
                              Icons.arrow_forward_ios,
                            ),
                                ]),
                          ),
                          Container(width: 8, height: 40),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(width: 375, height: 12),
            ],
          ),
        ),
      ],
    );
  }
}