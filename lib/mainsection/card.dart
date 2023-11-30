import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String title;
  final String description;
  final String subdiscription;
  final String image;
  const Cards({super.key, required this.title, required this.description, required this.subdiscription, required this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 216,
          height: 130,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x114F4F6C),
                blurRadius: 14,
                offset: Offset(0, 8),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 10,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 216, height: 14),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16, height: 36),
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
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 36,
                                        height: 36,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 36,
                                                height: 36,
                                                decoration: const ShapeDecoration(
                                                  color: Color(0x148C8C8C),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      child: SizedBox(
                                                        width: 200,
                                                        height: 200,
                                                        child: Stack(children: [
                                                          Positioned(
                                                            child: Container(
                                                              width: 50,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                  image: AssetImage(image),
                                                                  fit: BoxFit.fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                            ]),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 36, height: 2),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12, height: 36),
                          Container(
                            width: 136,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
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
                    const SizedBox(
                      width: 16,
                      height: 40,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 16, height: 40),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 216, height: 22),
              SizedBox(
                height: 38,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16, height: 34),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 18,
                                  child: Text(
                                    description,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 184, height: 2),
                                SizedBox(
                                  height: 18,
                                  child: Text(
                                    subdiscription,
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.550000011920929),
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                      height: 38,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 16, height: 38),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 216, height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
