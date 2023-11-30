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
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 375, height: 12),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 16, height: 40),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: 36, height: 2),
                                SizedBox(
                                  width: 36,
                                  height: 36,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 36,
                                          height: 36,
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
                                const SizedBox(width: 36, height: 2),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12, height: 40),
                          SizedBox(
                            width: 263,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 180,
                                  child: Text(
                                    title,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
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
                      decoration: const BoxDecoration(),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 20, height: 40),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Stack(children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child:
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              )

                            ]),
                          ),
                          SizedBox(width: 8, height: 40),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 375, height: 12),
            ],
          ),
        ),
      ],
    );
  }
}